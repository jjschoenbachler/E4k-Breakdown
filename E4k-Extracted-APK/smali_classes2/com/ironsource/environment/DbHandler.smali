.class public Lcom/ironsource/environment/DbHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "reports"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 19
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static addReport(Lcom/ironsource/environment/ExceptionLog;)V
    .locals 6

    .line 39
    new-instance v0, Lcom/ironsource/environment/DbHandler;

    invoke-static {}, Lcom/ironsource/environment/CrashReporter;->getInstance()Lcom/ironsource/environment/CrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/CrashReporter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/environment/DbHandler;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 42
    :try_start_0
    invoke-virtual {v0}, Lcom/ironsource/environment/DbHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 44
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/ironsource/environment/ExceptionLog;->getStacktrace()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lcom/ironsource/environment/ExceptionLog;->getDate()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {p0}, Lcom/ironsource/environment/ExceptionLog;->getIsAnr()Ljava/lang/String;

    move-result-object p0

    const-string v5, "stack_trace"

    .line 48
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "crash_date"

    .line 49
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "crashType"

    .line 50
    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "REPORTS"

    .line 52
    invoke-virtual {v0, p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 53
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    :cond_1
    throw p0
.end method

.method public static deleteAllReports()V
    .locals 2

    .line 162
    new-instance v0, Lcom/ironsource/environment/DbHandler;

    invoke-static {}, Lcom/ironsource/environment/CrashReporter;->getInstance()Lcom/ironsource/environment/CrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/CrashReporter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/environment/DbHandler;-><init>(Landroid/content/Context;)V

    .line 165
    :try_start_0
    invoke-virtual {v0}, Lcom/ironsource/environment/DbHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "DELETE FROM REPORTS WHERE id >= 0;"

    .line 167
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 172
    :cond_1
    throw v1
.end method

.method public static getAllReports()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/environment/ExceptionLog;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/ironsource/environment/DbHandler;

    invoke-static {}, Lcom/ironsource/environment/CrashReporter;->getInstance()Lcom/ironsource/environment/CrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/CrashReporter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/environment/DbHandler;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SELECT * FROM REPORTS ;"

    const/4 v3, 0x0

    .line 119
    :try_start_0
    invoke-virtual {v0}, Lcom/ironsource/environment/DbHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    :try_start_1
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 122
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 124
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    .line 125
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 126
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 127
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    new-instance v7, Lcom/ironsource/environment/ExceptionLog;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/ironsource/environment/ExceptionLog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 138
    :cond_3
    throw v1

    :goto_1
    nop

    goto :goto_1
.end method

.method public static getExceptionCursorById(I)Landroid/database/Cursor;
    .locals 4

    .line 94
    new-instance v0, Lcom/ironsource/environment/DbHandler;

    invoke-static {}, Lcom/ironsource/environment/CrashReporter;->getInstance()Lcom/ironsource/environment/CrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/CrashReporter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/environment/DbHandler;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 97
    :try_start_0
    invoke-virtual {v0}, Lcom/ironsource/environment/DbHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM REPORTSWHERE id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-virtual {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    :cond_1
    throw p0
.end method

.method public static getExceptionsCursor()Landroid/database/Cursor;
    .locals 3

    .line 143
    new-instance v0, Lcom/ironsource/environment/DbHandler;

    invoke-static {}, Lcom/ironsource/environment/CrashReporter;->getInstance()Lcom/ironsource/environment/CrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/CrashReporter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/environment/DbHandler;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SELECT * FROM REPORTS;"

    const/4 v2, 0x0

    .line 148
    :try_start_0
    invoke-virtual {v0}, Lcom/ironsource/environment/DbHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 154
    :cond_1
    throw v1
.end method

.method public static getReportById(I)Lcom/ironsource/environment/ExceptionLog;
    .locals 5

    .line 70
    new-instance v0, Lcom/ironsource/environment/DbHandler;

    invoke-static {}, Lcom/ironsource/environment/CrashReporter;->getInstance()Lcom/ironsource/environment/CrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/CrashReporter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/environment/DbHandler;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 73
    :try_start_0
    invoke-virtual {v0}, Lcom/ironsource/environment/DbHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM REPORTSWHERE id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-virtual {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v1, 0x0

    .line 76
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 77
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 78
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 79
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 81
    new-instance p0, Lcom/ironsource/environment/ExceptionLog;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ironsource/environment/ExceptionLog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 86
    :cond_1
    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS REPORTS(id INTEGER PRIMARY KEY AUTOINCREMENT , stack_trace TEXT NOT NULL, crash_date TEXT NOT NULL,crashType TEXT NOT NULL );"

    .line 26
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
