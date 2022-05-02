<?php

namespace Disciple\Repositories;

use Modules\Disciple\Entities\Disciple;
use Disciple\Interface\DiscipleRepositoryInterface;

class DiscipleRepositoryImpl implements DiscipleRepositoryInterface
{  
    public function all()
    {
        return Disciple::latest()->get();
    }

    public function save(array $details)
    {
        return Disciple::create($details);
    }

    public function find($id)
    {
        return Disciple::findOrFail($id);
    }

    public function update($id, array $newDetails)
    {
        return Disciple::whereId($id)->update($newDetails);
    }

    public function delete($id)
    {
        Disciple::destroy($id);
    }
}
