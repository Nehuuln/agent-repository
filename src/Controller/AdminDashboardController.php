<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Agent;
use App\Form\CategoryType;
use App\Form\AgentType;
use App\Repository\CategoryRepository;
use App\Repository\AgentRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/dashboard", name="dashboard_")
 */
class AdminDashboardController extends AbstractController
{
    #[Route("/dashboard", name: "dashboard")]
    public function index(CategoryRepository $categoryRepository): Response
    {
        $categories = $categoryRepository->findAll();
        return $this->render('dashboard/dashboard.html.twig', [
            'categories' => $categories,
        ]);
    }

    #[Route("/category/edit/{id}", name: "category_edit")]
    public function editCategory(
        Request $request,
        Category $category,
        EntityManagerInterface $em
    ): Response {
        $form = $this->createForm(CategoryType::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em->flush();
            return $this->redirectToRoute('dashboard');
        }

        return $this->render('dashboard/edit_category.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    #[Route("/agent/edit/{id}", name: "agent_edit")]
    public function editAgent(
        Request $request,
        Agent $agent,
        EntityManagerInterface $em
    ): Response {
        $form = $this->createForm(AgentType::class, $agent);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em->flush();
            return $this->redirectToRoute('dashboard');
        }

        return $this->render('dashboard/edit_agent.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    #[Route("/category/create", name: "category_create")]
public function createCategory(
    Request $request,
    EntityManagerInterface $em
): Response {
    $category = new Category();
    $form = $this->createForm(CategoryType::class, $category);
    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
        $em->persist($category);
        $em->flush();

        return $this->redirectToRoute('dashboard');
    }

    return $this->render('dashboard/create_category.html.twig', [
        'form' => $form->createView(),
    ]);
}

    #[Route("/agent/add/{categoryId}", name: "agent_add")]
    public function addAgent(
        Request $request,
        EntityManagerInterface $em,
        CategoryRepository $categoryRepository,
        int $categoryId
    ): Response {
        $category = $categoryRepository->find($categoryId);

        if (!$category) {
            throw $this->createNotFoundException('Category not found');
        }

        $agent = new Agent();
        $agent->setCategory($category);

        $form = $this->createForm(AgentType::class, $agent);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em->persist($agent);
            $em->flush();

            return $this->redirectToRoute('dashboard');
        }

        return $this->render('dashboard/add_agent.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
