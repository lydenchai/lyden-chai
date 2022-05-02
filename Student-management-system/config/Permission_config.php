<?php

return [
    'name' => 'Permission',
    'Providers' => [
        Module\Permission\Providers\PermissionServiceProvider::class,
        Module\Permission\Providers\RouteServiceProvider::class,
    ]
];
