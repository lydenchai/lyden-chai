<?php

namespace Modules\Score\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Score\Interface\ScoreRepositoryInterface;

class ScoreController extends Controller
{
    private ScoreRepositoryInterface $scoreRepository;

    public function __construct(ScoreRepositoryInterface $scoreRepository)
    {
        $this->scoreRepository = $scoreRepository;
    }

    public function index(): JsonResponse
    {
        return response()->json([
            'data' => $this->scoreRepository->all()
        ]);
    }

    public function store(Request $request): JsonResponse
    {
        $details = $request->only([
            'user_id',
            'htmlcss',
            'javascript',
            'python',
            'php',
            'laravel',
            'java',
        ]);
        return response()->json(
            [
                'message' => 'Score created',
                'data' => $this->scoreRepository->save($details)
            ],
            Response::HTTP_CREATED
        );
    }

    public function show(Request $request): JsonResponse
    {
        $id = $request->route('id');

        return response()->json([
            'data' => $this->scoreRepository->find($id)
        ]);
    }

    public function update(Request $request): JsonResponse
    {
        $id = $request->route('id');
        $details = $request->only([
            'user_id',
            'htmlcss',
            'javascript',
            'python',
            'php',
            'laravel',
            'java',
        ]);
        return response()->json([
            'message' => "Score updated",
            'data' => $this->scoreRepository->update($id, $details)
        ]);
    }

    public function destroy(Request $request): JsonResponse
    {
        $id = $request->route('id');
        $this->scoreRepository->delete($id);
        return response()->json([
            'message' => 'Score deleted'
        ], Response::HTTP_NO_CONTENT);
    }
}
