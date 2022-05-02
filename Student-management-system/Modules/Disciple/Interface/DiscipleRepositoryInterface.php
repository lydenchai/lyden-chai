<?php

namespace Disciple\Interface;

interface DiscipleRepositoryInterface
{
    public function all();
    public function save(array $details);
    public function find($id);
    public function update($id, array $newDetails);
    public function delete($id);
}
