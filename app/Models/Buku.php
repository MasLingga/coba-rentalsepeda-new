<?php

            /**
             * author : Suryo Atmojo <suryoatm@gmail.com>
             * project : supresso Laravel
             * Start-date : 19-09-2022
             */
            /**
             “Barangsiapa yang memberi kemudharatan kepada seorang muslim, 
            maka Allah akan memberi kemudharatan kepadanya, 
            barangsiapa yang merepotkan (menyusahkan) seorang muslim 
            maka Allah akan menyusahkan dia.”
            */
            
            namespace App\Models;
            
            use Illuminate\Database\Eloquent\Factories\HasFactory;
            use Illuminate\Database\Eloquent\Model;
            
            class Buku extends Model
            {
                use HasFactory;
                protected $table = "buku";
                protected $fillable = [
                    "id_kategori",
"judul_buku",
"penulis",
"dipinjam",
"penerbit",
"tahun_terbit",
"jumlah_buku",
"deleted",

                ];
            }
            ?>