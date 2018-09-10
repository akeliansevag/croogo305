<?php
namespace Assets\Model\Entity;

use Cake\ORM\Entity;

/**
 * Asset Entity
 *
 * @property int $id
 * @property string $name
 * @property string $caption
 * @property string $table
 * @property int $rowid
 * @property string $attachment
 * @property string $mime_type
 * @property string $size
 * @property int $status
 * @property \Cake\I18n\FrozenTime $updated
 * @property \Cake\I18n\FrozenTime $created
 *
 * @property \Assets\Model\Entity\Row $row
 */
class Asset extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' =>  true
    ];
}
