<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new \App\USer;
        $user->name = 'Administrator';
        $user->email = 'admin@nurul-ikhwan.com';
        $user->password = \Hash::make("admin");
        $user->save();
        $this->command->info("User admin berhasil dibuat");
    }
}
