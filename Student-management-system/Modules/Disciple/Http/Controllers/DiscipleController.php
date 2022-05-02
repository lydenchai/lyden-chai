<?php

namespace Modules\Disciple\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Disciple\Interface\DiscipleRepositoryInterface;

class DiscipleController extends Controller
{
    private DiscipleRepositoryInterface $discipleRepository;

    public function __construct(DiscipleRepositoryInterface $discipleRepository)
    {
        $this->discipleRepository = $discipleRepository;
    }

    public function index(): JsonResponse
    {
        return response()->json([
            'data' => $this->discipleRepository->all()
        ]);
    }

    public function store(Request $request): JsonResponse
    {
        $details = $request->only([
            'user_id',
            'date',
            'type',
            'description'
        ]);
        return response()->json(
            [
                'message' => 'Disciple created',
                'data' => $this->discipleRepository->save($details)
            ],
            Response::HTTP_CREATED
        );
    }

    public function show(Request $request): JsonResponse
    {
        $id = $request->route('id');

        return response()->json([
            'data' => $this->discipleRepository->find($id)
        ]);
    }

    public function update(Request $request): JsonResponse
    {
        $id = $request->route('id');
        $details = $request->only([
            'user_id',
            'date',
            'type',
            'description'
        ]);
        return response()->json([
            'message' => "Disciple updated",
            'data' => $this->discipleRepository->update($id, $details)
        ]);
    }

    public function destroy(Request $request): JsonResponse
    {
        $id = $request->route('id');
        $this->discipleRepository->delete($id);
        return response()->json([
            'message' => 'Disciple deleted'
        ], Response::HTTP_NO_CONTENT);
    }
}
