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
            
            class Sewa_sepeda extends Model
            {
                use HasFactory;
                protected $table = "sewa_sepeda";
                protected $fillable = [
                    "id_sewa_sepeda",
                    "qty_sewa",
                    "fk_id_sewa",
                    "deleted",
                    "fk_id_member",
                ];
            }
            ?>