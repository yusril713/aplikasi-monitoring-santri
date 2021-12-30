<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class SantriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $santri = \App\Santri::where('nis', '!=', '5130411368')->get();
        foreach($santri as $s) {
            $user = new \App\User;
            $user->username = $s->nis;
            $user->password = bcrypt($s->nis);
            $user->api_token = Str::random(80);
            $user->save();
        }
    }
}
