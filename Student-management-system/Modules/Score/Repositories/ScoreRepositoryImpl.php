<?php

namespace Score\Repositories;

use Modules\Score\Entities\Score;
use Score\Interface\ScoreRepositoryInterface;


class ScoreRepositoryImpl implements ScoreRepositoryInterface
{
    public function all()
    {
        return Score::latest()->get();
    }

    public function save(array $details)
    {
        return Score::create($details);
    }

    public function find($id)
    {
        return Score::findOrFail($id);
    }

    public function update($id, array $newDetails)
    {
        return Score::whereId($id)->update($newDetails);
    }

    public function delete($id)
    {
        Score::destroy($id);
    }
}
