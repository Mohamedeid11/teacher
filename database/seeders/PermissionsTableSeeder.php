<?php

namespace Database\Seeders;

use App\Models\Permission;
use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{
    public function run()
    {
        $permissions = [
            [
                'id'    => 1,
                'title' => 'user_management_access',
            ],
            [
                'id'    => 2,
                'title' => 'permission_create',
            ],
            [
                'id'    => 3,
                'title' => 'permission_edit',
            ],
            [
                'id'    => 4,
                'title' => 'permission_show',
            ],
            [
                'id'    => 5,
                'title' => 'permission_delete',
            ],
            [
                'id'    => 6,
                'title' => 'permission_access',
            ],
            [
                'id'    => 7,
                'title' => 'role_create',
            ],
            [
                'id'    => 8,
                'title' => 'role_edit',
            ],
            [
                'id'    => 9,
                'title' => 'role_show',
            ],
            [
                'id'    => 10,
                'title' => 'role_delete',
            ],
            [
                'id'    => 11,
                'title' => 'role_access',
            ],
            [
                'id'    => 12,
                'title' => 'user_create',
            ],
            [
                'id'    => 13,
                'title' => 'user_edit',
            ],
            [
                'id'    => 14,
                'title' => 'user_show',
            ],
            [
                'id'    => 15,
                'title' => 'user_delete',
            ],
            [
                'id'    => 16,
                'title' => 'user_access',
            ],
            [
                'id'    => 17,
                'title' => 'course_create',
            ],
            [
                'id'    => 18,
                'title' => 'course_edit',
            ],
            [
                'id'    => 19,
                'title' => 'course_show',
            ],
            [
                'id'    => 20,
                'title' => 'course_delete',
            ],
            [
                'id'    => 21,
                'title' => 'course_access',
            ],
            [
                'id'    => 22,
                'title' => 'lesson_create',
            ],
            [
                'id'    => 23,
                'title' => 'lesson_edit',
            ],
            [
                'id'    => 24,
                'title' => 'lesson_show',
            ],
            [
                'id'    => 25,
                'title' => 'lesson_delete',
            ],
            [
                'id'    => 26,
                'title' => 'lesson_access',
            ],
            [
                'id'    => 27,
                'title' => 'test_create',
            ],
            [
                'id'    => 28,
                'title' => 'test_edit',
            ],
            [
                'id'    => 29,
                'title' => 'test_show',
            ],
            [
                'id'    => 30,
                'title' => 'test_delete',
            ],
            [
                'id'    => 31,
                'title' => 'test_access',
            ],
            [
                'id'    => 32,
                'title' => 'question_create',
            ],
            [
                'id'    => 33,
                'title' => 'question_edit',
            ],
            [
                'id'    => 34,
                'title' => 'question_show',
            ],
            [
                'id'    => 35,
                'title' => 'question_delete',
            ],
            [
                'id'    => 36,
                'title' => 'question_access',
            ],
            [
                'id'    => 37,
                'title' => 'question_option_create',
            ],
            [
                'id'    => 38,
                'title' => 'question_option_edit',
            ],
            [
                'id'    => 39,
                'title' => 'question_option_show',
            ],
            [
                'id'    => 40,
                'title' => 'question_option_delete',
            ],
            [
                'id'    => 41,
                'title' => 'question_option_access',
            ],
            [
                'id'    => 42,
                'title' => 'test_result_create',
            ],
            [
                'id'    => 43,
                'title' => 'test_result_edit',
            ],
            [
                'id'    => 44,
                'title' => 'test_result_show',
            ],
            [
                'id'    => 45,
                'title' => 'test_result_delete',
            ],
            [
                'id'    => 46,
                'title' => 'test_result_access',
            ],
            [
                'id'    => 47,
                'title' => 'test_answer_create',
            ],
            [
                'id'    => 48,
                'title' => 'test_answer_edit',
            ],
            [
                'id'    => 49,
                'title' => 'test_answer_show',
            ],
            [
                'id'    => 50,
                'title' => 'test_answer_delete',
            ],
            [
                'id'    => 51,
                'title' => 'test_answer_access',
            ],
            [
                'id'    => 52,
                'title' => 'faq_management_access',
            ],
            [
                'id'    => 53,
                'title' => 'faq_category_create',
            ],
            [
                'id'    => 54,
                'title' => 'faq_category_edit',
            ],
            [
                'id'    => 55,
                'title' => 'faq_category_show',
            ],
            [
                'id'    => 56,
                'title' => 'faq_category_delete',
            ],
            [
                'id'    => 57,
                'title' => 'faq_category_access',
            ],
            [
                'id'    => 58,
                'title' => 'faq_question_create',
            ],
            [
                'id'    => 59,
                'title' => 'faq_question_edit',
            ],
            [
                'id'    => 60,
                'title' => 'faq_question_show',
            ],
            [
                'id'    => 61,
                'title' => 'faq_question_delete',
            ],
            [
                'id'    => 62,
                'title' => 'faq_question_access',
            ],
            [
                'id'    => 63,
                'title' => 'task_management_access',
            ],
            [
                'id'    => 64,
                'title' => 'task_status_create',
            ],
            [
                'id'    => 65,
                'title' => 'task_status_edit',
            ],
            [
                'id'    => 66,
                'title' => 'task_status_show',
            ],
            [
                'id'    => 67,
                'title' => 'task_status_delete',
            ],
            [
                'id'    => 68,
                'title' => 'task_status_access',
            ],
            [
                'id'    => 69,
                'title' => 'task_tag_create',
            ],
            [
                'id'    => 70,
                'title' => 'task_tag_edit',
            ],
            [
                'id'    => 71,
                'title' => 'task_tag_show',
            ],
            [
                'id'    => 72,
                'title' => 'task_tag_delete',
            ],
            [
                'id'    => 73,
                'title' => 'task_tag_access',
            ],
            [
                'id'    => 74,
                'title' => 'task_create',
            ],
            [
                'id'    => 75,
                'title' => 'task_edit',
            ],
            [
                'id'    => 76,
                'title' => 'task_show',
            ],
            [
                'id'    => 77,
                'title' => 'task_delete',
            ],
            [
                'id'    => 78,
                'title' => 'task_access',
            ],
            [
                'id'    => 79,
                'title' => 'tasks_calendar_access',
            ],
            [
                'id'    => 80,
                'title' => 'user_alert_create',
            ],
            [
                'id'    => 81,
                'title' => 'user_alert_show',
            ],
            [
                'id'    => 82,
                'title' => 'user_alert_delete',
            ],
            [
                'id'    => 83,
                'title' => 'user_alert_access',
            ],
            [
                'id'    => 84,
                'title' => 'gift_create',
            ],
            [
                'id'    => 85,
                'title' => 'gift_edit',
            ],
            [
                'id'    => 86,
                'title' => 'gift_show',
            ],
            [
                'id'    => 87,
                'title' => 'gift_delete',
            ],
            [
                'id'    => 88,
                'title' => 'gift_access',
            ],
            [
                'id'    => 89,
                'title' => 'category_create',
            ],
            [
                'id'    => 90,
                'title' => 'category_edit',
            ],
            [
                'id'    => 91,
                'title' => 'category_show',
            ],
            [
                'id'    => 92,
                'title' => 'category_delete',
            ],
            [
                'id'    => 93,
                'title' => 'category_access',
            ],
            [
                'id'    => 94,
                'title' => 'profile_password_edit',
            ],
        ];

        Permission::insert($permissions);
    }
}
