# Database Schema Design

## Overview
This document describes the complete database schema for the Mock Test Application, a Laravel-based IELTS mock test system that supports Listening, Reading, and Writing sections.

## Entity Relationship Diagram

```
users
  └── (Admin/User authentication)

mock_tests
  ├── sections (1:N)
  │   ├── question_groups (1:N)
  │   │   ├── questions (1:N)
  │   │   │   ├── question_options (1:N)
  │   │   │   └── question_answers (1:N)
  │   │   ├── reading_passages (1:1)
  │   │   └── writing_passages (1:1)
  │   └── user_scores (1:N)
  └── test_users (1:N)
      ├── user_answers (1:N)
      ├── user_writing_answers (1:N)
      ├── user_scores (1:N)
      └── ws_scores (1:1)
```

## Tables

### 1. users
**Purpose**: Stores admin and regular user accounts for authentication.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique user identifier |
| name | string(255) | NOT NULL | User's full name |
| email | string(255) | UNIQUE, NOT NULL | User's email address |
| password | string(255) | NOT NULL | Hashed password |
| type | string(255) | DEFAULT 'User' | User type (Admin/User) |
| mobile | string(255) | NULLABLE | User's mobile number (may require migration) |
| education | string(255) | NULLABLE | User's education level (may require migration) |
| institution | string(255) | NULLABLE | User's institution (may require migration) |
| email_verified_at | timestamp | NULLABLE | Email verification timestamp |
| remember_token | string(100) | NULLABLE | Remember me token |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- No direct relationships with mock test entities (used for authentication only)

---

### 2. mock_tests
**Purpose**: Represents a complete mock test exam.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique mock test identifier |
| title | string(255) | NOT NULL | Mock test title (e.g., "Mock Test 1") |
| description | text | NULLABLE | Description of the mock test |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `hasMany` sections
- `hasMany` test_users

---

### 3. sections
**Purpose**: Represents different sections of a mock test (Listening, Reading, Writing).

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique section identifier |
| mock_test_id | bigint | FOREIGN KEY → mock_tests.id, CASCADE DELETE | Parent mock test |
| name | string(255) | NOT NULL | Section name (Listening/Reading/Writing) |
| order_no | integer | NOT NULL | Display order within mock test |
| duration | integer | NOT NULL | Duration in minutes |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` mock_test
- `hasMany` question_groups
- `hasMany` user_scores
- `hasMany` user_answers
- `hasMany` user_writing_answers

---

### 4. question_groups
**Purpose**: Groups related questions together (e.g., questions based on a reading passage or audio).

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique question group identifier |
| section_id | bigint | FOREIGN KEY → sections.id, CASCADE DELETE | Parent section |
| title | string(255) | NOT NULL | Group title |
| description | text | NULLABLE | Group description |
| media_file | string(255) | NULLABLE | Audio/video file path for listening section |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` section
- `hasMany` questions
- `hasOne` reading_passage (optional)
- `hasOne` writing_passage (optional)
- `hasMany` user_writing_answers

---

### 5. questions
**Purpose**: Individual questions within a question group.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique question identifier |
| question_group_id | bigint | FOREIGN KEY → question_groups.id, CASCADE DELETE | Parent question group |
| text | text | NOT NULL | Question text or sentence |
| type | enum | NOT NULL | Question type: 'mcq', 'fill_blank', 'multi_select', 'checkbox', 'table', 'true_false' |
| order_no | integer | DEFAULT 1 | Display order within group |
| meta_data | json | NULLABLE | Additional metadata (table columns, gap positions, etc.) |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` question_group
- `hasMany` question_options
- `hasMany` question_answers
- `hasMany` user_answers

**Question Types**:
- `mcq`: Multiple choice question
- `fill_blank`: Fill in the blank
- `multi_select`: Multiple selection
- `checkbox`: Checkbox selection
- `table`: Table-based question
- `true_false`: True/False question

---

### 6. question_options
**Purpose**: Answer options for questions (especially MCQ, checkbox, table questions).

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique option identifier |
| question_id | bigint | FOREIGN KEY → questions.id, CASCADE DELETE | Parent question |
| text | string(255) | NULLABLE | Option text |
| row_index | integer | NULLABLE | Row index for table questions |
| col_index | integer | NULLABLE | Column index for table questions |
| is_correct | boolean | DEFAULT false | Whether this option is correct |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` question
- `hasMany` question_answers
- `hasMany` user_answers

---

### 7. question_answers
**Purpose**: Correct answers for questions (reference data).

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique answer identifier |
| question_id | bigint | FOREIGN KEY → questions.id, CASCADE DELETE | Parent question |
| answer_text | string(255) | NULLABLE | Text-based answer |
| option_id | bigint | FOREIGN KEY → question_options.id, NULLABLE, CASCADE DELETE | Reference to correct option |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` question
- `belongsTo` question_option

---

### 8. reading_passages
**Purpose**: Reading passages associated with question groups.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique passage identifier |
| question_group_id | bigint | FOREIGN KEY → question_groups.id, CASCADE DELETE | Parent question group |
| title | string(255) | NULLABLE | Passage title |
| content | longtext | NOT NULL | Passage content (can contain HTML) |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` question_group

---

### 9. writing_passages
**Purpose**: Writing prompts/passages for writing sections.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique passage identifier |
| question_group_id | bigint | FOREIGN KEY → question_groups.id, CASCADE DELETE | Parent question group |
| title | string(255) | NULLABLE | Passage/prompt title |
| content | longtext | NOT NULL | Writing prompt content (can contain HTML) |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` question_group

---

### 10. test_users
**Purpose**: Test takers registered for a specific mock test.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique test user identifier |
| mock_test_id | bigint | FOREIGN KEY → mock_tests.id, CASCADE DELETE | Associated mock test |
| name | string(255) | NOT NULL | Test taker's name |
| phone | string(20) | NULLABLE | Test taker's phone number |
| email | string(255) | NULLABLE | Test taker's email |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` mock_test
- `hasMany` user_answers
- `hasMany` user_writing_answers
- `hasMany` user_scores
- `hasOne` ws_score

---

### 11. user_answers
**Purpose**: Stores user's answers for listening and reading questions.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique answer identifier |
| test_user_id | bigint | FOREIGN KEY → test_users.id, CASCADE DELETE | Test taker |
| mock_test_id | bigint | FOREIGN KEY → mock_tests.id, CASCADE DELETE | Associated mock test |
| section_id | bigint | FOREIGN KEY → sections.id, CASCADE DELETE | Section (Listening/Reading) |
| question_id | bigint | FOREIGN KEY → questions.id, CASCADE DELETE | Question answered |
| option_id | bigint | FOREIGN KEY → question_options.id, NULLABLE, NULL ON DELETE | Selected option (if applicable) |
| question_no | integer | NULLABLE | Question number for reference |
| answer_text | longtext | NULLABLE | Text-based answer (for fill_blank, etc.) |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` test_user
- `belongsTo` mock_test
- `belongsTo` section
- `belongsTo` question
- `belongsTo` question_option

---

### 12. user_writing_answers
**Purpose**: Stores user's written answers for writing section questions.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique answer identifier |
| test_user_id | bigint | FOREIGN KEY → test_users.id, CASCADE DELETE | Test taker |
| section_id | bigint | FOREIGN KEY → sections.id, CASCADE DELETE | Writing section |
| question_group_id | bigint | FOREIGN KEY → question_groups.id, CASCADE DELETE | Question group/prompt |
| answer_text | longtext | NOT NULL | User's written answer |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` test_user
- `belongsTo` section
- `belongsTo` question_group

---

### 13. user_scores
**Purpose**: Stores automated scores for listening and reading sections.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique score identifier |
| test_user_id | bigint | NOT NULL | Test taker (no foreign key constraint in migration) |
| section_id | bigint | NOT NULL | Section (no foreign key constraint in migration) |
| result | integer | NOT NULL | Score/result for the section |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` test_user (logical)
- `belongsTo` section (logical)

**Note**: Foreign key constraints are not explicitly defined in the migration but relationships exist in models.

---

### 14. ws_scores
**Purpose**: Stores manually graded scores for Writing and Speaking sections.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | bigint | PRIMARY KEY, AUTO_INCREMENT | Unique score identifier |
| test_user_id | bigint | FOREIGN KEY → test_users.id | Test taker |
| writing_result | decimal/numeric | NULLABLE | Writing section score (0-9) |
| speaking_result | decimal/numeric | NULLABLE | Speaking section score (0-9) |
| created_at | timestamp | NULLABLE | Record creation timestamp |
| updated_at | timestamp | NULLABLE | Record update timestamp |

**Relationships**:
- `belongsTo` test_user

**Note**: Migration file not found in codebase, but model indicates table structure. Expected columns: id, test_user_id, writing_result, speaking_result, timestamps.

---

## Key Design Patterns

### 1. Hierarchical Structure
- **Mock Test** → **Sections** → **Question Groups** → **Questions** → **Options/Answers**
- This allows flexible organization of test content

### 2. Question Types Support
- Multiple question types (MCQ, fill_blank, table, etc.) supported through `type` enum and `meta_data` JSON field
- `meta_data` allows storing type-specific configuration

### 3. Answer Storage
- **question_answers**: Reference correct answers
- **user_answers**: User-submitted answers for Listening/Reading
- **user_writing_answers**: User-submitted answers for Writing

### 4. Scoring System
- **user_scores**: Automated scores for Listening/Reading (calculated from user_answers)
- **ws_scores**: Manual scores for Writing/Speaking (graded by admin)

### 5. Passage Support
- **reading_passages**: Associated with question groups for reading sections
- **writing_passages**: Associated with question groups for writing prompts

## Indexes

Recommended indexes for performance:
- `mock_tests`: `title` (if searching by title)
- `sections`: `mock_test_id`, `order_no`
- `question_groups`: `section_id`
- `questions`: `question_group_id`, `type`, `order_no`
- `question_options`: `question_id`, `is_correct`
- `test_users`: `mock_test_id`, `email`
- `user_answers`: `test_user_id`, `mock_test_id`, `section_id`, `question_id`
- `user_writing_answers`: `test_user_id`, `section_id`, `question_group_id`
- `user_scores`: `test_user_id`, `section_id`
- `ws_scores`: `test_user_id`

## Data Flow

1. **Test Creation**: Admin creates mock_test → sections → question_groups → questions → options/answers
2. **Test Registration**: User registers as test_user for a mock_test
3. **Test Taking**: User submits answers → stored in user_answers (Listening/Reading) or user_writing_answers (Writing)
4. **Auto Scoring**: System calculates scores from user_answers → stored in user_scores
5. **Manual Scoring**: Admin grades writing/speaking → stored in ws_scores
6. **Result Viewing**: System aggregates scores from user_scores and ws_scores

## Constraints and Validations

- All foreign keys use CASCADE DELETE to maintain referential integrity
- `option_id` in `user_answers` uses NULL ON DELETE (optional answer)
- Question types are restricted via ENUM
- Scores typically range 0-9 (IELTS band scale)

