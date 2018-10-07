<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\User:: create([
            'name'=>'Super Admin',
            'username'=>'administrator',
            'email'=>'administrator@administrator.com',
            'password'=>bcrypt('admin123456')
        ]);
    }
}
