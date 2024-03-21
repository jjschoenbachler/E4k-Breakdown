.class final Lcom/google/android/gms/measurement/internal/zzz;
.super Lcom/google/android/gms/measurement/internal/zzki;
.source "com.google.android.gms:play-services-measurement@@20.0.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/zzt;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/lang/Long;

.field private zze:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzks;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    return-void
.end method

.method private final zzd(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzt;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzt;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzz;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzs;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final zzf(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzt;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Lcom/google/android/gms/measurement/internal/zzt;)Ljava/util/BitSet;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 59
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgh;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfk;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/util/Set;

    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzd:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzz;->zze:Ljava/lang/Long;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    const-string v1, "_s"

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdy;->zzY:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v13

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdy;->zzX:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 13
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v14

    if-eqz v1, :cond_2

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    .line 17
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "current_session_count"

    .line 18
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/String;

    aput-object v3, v5, v11

    const-string v6, "events"

    const-string v7, "app_id = ?"

    .line 19
    invoke-virtual {v4, v6, v0, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 42
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v4, "Error resetting session-scoped event counts. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v14, :cond_9

    if-eqz v13, :cond_9

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 25
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Landroidx/collection/ArrayMap;

    .line 26
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_1
    const-string v0, "audience_id"

    const-string v5, "data"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v18

    new-array v0, v12, [Ljava/lang/String;

    aput-object v3, v0, v11

    const-string v17, "event_filters"

    const-string v19, "app_id=?"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 28
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    :cond_3
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzej;->zzc()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzl(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzej;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzej;->zzo()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 36
    :cond_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_5
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    .line 48
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 32
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v6

    .line 33
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v6

    const-string v7, "Failed to merge filter. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 34
    invoke-virtual {v6, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_3

    if-eqz v5, :cond_6

    .line 42
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v4

    goto :goto_7

    .line 43
    :cond_7
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_9

    .line 42
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    .line 22
    :goto_4
    :try_start_6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v4, "Database error querying filters. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_9

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v5, :cond_8

    .line 42
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 48
    :cond_8
    throw v0

    :cond_9
    :goto_6
    move-object v9, v0

    .line 42
    :goto_7
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 51
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_7
    const-string v0, "audience_id"

    const-string v4, "current_results"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v18

    new-array v0, v12, [Ljava/lang/String;

    aput-object v3, v0, v11

    const-string v17, "audience_filter_values"

    const-string v19, "app_id=?"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 52
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 53
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_d

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 90
    :cond_a
    :try_start_9
    new-instance v5, Landroidx/collection/ArrayMap;

    .line 54
    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    .line 55
    :cond_b
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 56
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 57
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzf()Lcom/google/android/gms/internal/measurement/zzgc;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzl(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgd;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 62
    :try_start_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catch_4
    move-exception v0

    .line 96
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 58
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v7

    const-string v8, "Failed to merge filter results. appId, audienceId, error"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 61
    invoke-virtual {v7, v8, v15, v6, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-nez v0, :cond_b

    if-eqz v4, :cond_c

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v15, v5

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v15, v4

    goto/16 :goto_42

    :catch_5
    move-exception v0

    move-object v15, v4

    goto :goto_9

    :catchall_4
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_42

    :catch_6
    move-exception v0

    const/4 v15, 0x0

    .line 34
    :goto_9
    :try_start_c
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v4, "Database error querying filter results. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 68
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    if-eqz v15, :cond_d

    .line 64
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_d
    :goto_a
    move-object v15, v0

    .line 71
    :goto_b
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v8, 0x2

    if-eqz v0, :cond_f

    :cond_e
    const/4 v12, 0x2

    goto/16 :goto_21

    .line 173
    :cond_f
    new-instance v2, Ljava/util/HashSet;

    .line 72
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_1e

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 73
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/collection/ArrayMap;

    .line 75
    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    .line 76
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_14

    .line 129
    :cond_10
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroidx/collection/ArrayMap;

    .line 80
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :try_start_d
    new-array v6, v8, [Ljava/lang/String;

    aput-object v1, v6, v11

    aput-object v1, v6, v12

    const-string v7, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    .line 81
    invoke-virtual {v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 82
    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 83
    :cond_11
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_12

    new-instance v7, Ljava/util/ArrayList;

    .line 85
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_12
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-nez v6, :cond_11

    if-eqz v5, :cond_14

    .line 90
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 91
    :cond_13
    :try_start_f
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v5, :cond_14

    goto :goto_c

    :catchall_5
    move-exception v0

    goto/16 :goto_15

    :catch_7
    move-exception v0

    goto :goto_d

    :catchall_6
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_15

    :catch_8
    move-exception v0

    const/4 v5, 0x0

    .line 188
    :goto_d
    :try_start_10
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v4

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v5, :cond_14

    goto :goto_c

    .line 97
    :cond_14
    :goto_e
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzgd;

    .line 99
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_1b

    .line 100
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_15

    goto/16 :goto_12

    .line 101
    :cond_15
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzu()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5

    .line 103
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzk()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzr(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 104
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 105
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjx;->zzbv()Lcom/google/android/gms/internal/measurement/zzjt;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgc;->zze()Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzgc;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 106
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzu()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5

    .line 107
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzn()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v5, v12, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzr(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 108
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgc;->zzf()Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzgc;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v5, 0x0

    .line 109
    :goto_10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()I

    move-result v12

    if-ge v5, v12, :cond_17

    .line 110
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzgd;->zze(I)Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfm;->zza()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 111
    invoke-interface {v7, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 112
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzgc;->zzg(I)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_17
    const/4 v5, 0x0

    .line 113
    :goto_11
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzc()I

    move-result v12

    if-ge v5, v12, :cond_19

    .line 114
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzgd;->zzi(I)Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgf;->zzb()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 115
    invoke-interface {v7, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 116
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzgc;->zzh(I)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 117
    :cond_19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_1a
    const/4 v8, 0x2

    goto/16 :goto_f

    .line 101
    :cond_1b
    :goto_12
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    const/4 v8, 0x2

    const/4 v12, 0x1

    goto/16 :goto_f

    :cond_1c
    :goto_14
    move-object v0, v3

    goto :goto_16

    :catchall_7
    move-exception v0

    :goto_15
    if-eqz v5, :cond_1d

    .line 90
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_1d
    throw v0

    :cond_1e
    move-object v0, v15

    .line 118
    :goto_16
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 119
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgd;

    new-instance v5, Ljava/util/BitSet;

    .line 120
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    .line 121
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Landroidx/collection/ArrayMap;

    .line 122
    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_22

    .line 123
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()I

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_1a

    .line 136
    :cond_1f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgd;->zzj()Ljava/util/List;

    move-result-object v2

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfm;

    .line 125
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfm;->zzh()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 126
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfm;->zza()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 127
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfm;->zzg()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 128
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfm;->zzb()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_19

    :cond_21
    const/4 v3, 0x0

    .line 129
    :goto_19
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 123
    :cond_22
    :goto_1a
    new-instance v8, Landroidx/collection/ArrayMap;

    .line 130
    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_25

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgd;->zzc()I

    move-result v2

    if-nez v2, :cond_23

    goto :goto_1c

    .line 156
    :cond_23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgd;->zzm()Ljava/util/List;

    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgf;

    .line 133
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgf;->zzi()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgf;->zza()I

    move-result v4

    if-lez v4, :cond_24

    .line 134
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgf;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 135
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgf;->zza()I

    move-result v17

    add-int/lit8 v11, v17, -0x1

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzgf;->zzc(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 136
    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    goto :goto_1b

    :cond_25
    :goto_1c
    if-eqz v1, :cond_28

    const/4 v2, 0x0

    .line 137
    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgd;->zzd()I

    move-result v3

    mul-int/lit8 v3, v3, 0x40

    if-ge v2, v3, :cond_28

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgd;->zzn()Ljava/util/List;

    move-result-object v3

    .line 138
    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzku;->zzw(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 139
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v4, "Filter already evaluated. audience ID, filter ID"

    .line 141
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v24, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v11, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgd;->zzk()Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzku;->zzw(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 145
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1e

    :cond_26
    move-object/from16 v24, v0

    .line 144
    :cond_27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v24

    goto :goto_1d

    :cond_28
    move-object/from16 v24, v0

    .line 146
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgd;

    if-eqz v14, :cond_2d

    if-eqz v13, :cond_2d

    .line 147
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2d

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzz;->zze:Ljava/lang/Long;

    if-eqz v1, :cond_2d

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzd:Ljava/lang/Long;

    if-nez v1, :cond_29

    goto :goto_20

    .line 148
    :cond_29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzej;

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzz;->zze:Ljava/lang/Long;

    .line 150
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzej;->zzm()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzd:Ljava/lang/Long;

    .line 152
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    div-long v17, v17, v19

    .line 153
    :cond_2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 154
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2c
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 156
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 147
    :cond_2d
    :goto_20
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v25, v12

    const/4 v12, 0x2

    move-object/from16 v17, v9

    move-object v9, v11

    .line 157
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzz;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgd;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzs;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/util/Map;

    .line 158
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v17

    move-object/from16 v0, v24

    move-object/from16 v12, v25

    const/4 v11, 0x0

    goto/16 :goto_17

    .line 159
    :goto_21
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto/16 :goto_2e

    .line 236
    :cond_2e
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzv;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzu;)V

    new-instance v2, Landroidx/collection/ArrayMap;

    .line 160
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 161
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 162
    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfo;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v4

    if-eqz v4, :cond_2f

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 163
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v5

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzaj;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    if-nez v8, :cond_30

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 166
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v8

    .line 167
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v8

    const-string v9, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 168
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    .line 169
    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-virtual {v8, v9, v11, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzap;

    move-object/from16 v24, v5

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v26

    const-wide/16 v27, 0x1

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()J

    move-result-wide v33

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v25, v6

    invoke-direct/range {v24 .. v40}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_23

    .line 195
    :cond_30
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzap;

    move-object/from16 v41, v0

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zza:Ljava/lang/String;

    move-object/from16 v42, v5

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zzb:Ljava/lang/String;

    move-object/from16 v43, v5

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zzc:J

    const-wide/16 v13, 0x1

    add-long v44, v5, v13

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zzd:J

    add-long v46, v5, v13

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zze:J

    add-long v48, v5, v13

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zzf:J

    move-wide/from16 v50, v5

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zzg:J

    move-wide/from16 v52, v5

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zzh:Ljava/lang/Long;

    move-object/from16 v54, v5

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zzi:Ljava/lang/Long;

    move-object/from16 v55, v5

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zzj:Ljava/lang/Long;

    move-object/from16 v56, v5

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzap;->zzk:Ljava/lang/Boolean;

    move-object/from16 v57, v5

    .line 173
    invoke-direct/range {v41 .. v57}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v5, v0

    .line 172
    :goto_23
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzF(Lcom/google/android/gms/measurement/internal/zzap;)V

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzap;->zzc:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_37

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 177
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v9

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 178
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 179
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Landroidx/collection/ArrayMap;

    .line 181
    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 178
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    :try_start_11
    const-string v0, "audience_id"

    const-string v15, "data"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v16

    new-array v0, v12, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v11, v0, v15

    const/4 v15, 0x1

    aput-object v8, v0, v15

    const-string v15, "event_filters"

    const-string v17, "app_id=? AND event_name=?"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v0

    .line 182
    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 183
    :try_start_12
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    :goto_24
    const/4 v14, 0x1

    .line 184
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 185
    :try_start_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzej;->zzc()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v14

    invoke-static {v14, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzl(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzej;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    const/4 v14, 0x0

    .line 189
    :try_start_14
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 190
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_31

    new-instance v12, Ljava/util/ArrayList;

    .line 191
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {v13, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_31
    move-object/from16 v12, v16

    .line 193
    :goto_25
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v58, v1

    goto :goto_26

    :catch_9
    move-exception v0

    .line 299
    iget-object v12, v9, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 186
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v12

    .line 187
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v12

    const-string v14, "Failed to merge filter. appId"
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-object/from16 v58, v1

    :try_start_15
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    invoke-virtual {v12, v14, v1, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    :goto_26
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-nez v0, :cond_33

    if-eqz v15, :cond_32

    .line 195
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v13

    goto :goto_29

    :cond_33
    move-object/from16 v1, v58

    const/4 v12, 0x2

    goto :goto_24

    :cond_34
    move-object/from16 v58, v1

    .line 196
    :try_start_16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-eqz v15, :cond_35

    .line 195
    :goto_27
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_29

    :catch_a
    move-exception v0

    goto :goto_28

    :catchall_8
    move-exception v0

    goto :goto_2a

    :catch_b
    move-exception v0

    move-object/from16 v58, v1

    goto :goto_28

    :catchall_9
    move-exception v0

    const/4 v15, 0x0

    goto :goto_2a

    :catch_c
    move-exception v0

    move-object/from16 v58, v1

    const/4 v15, 0x0

    .line 229
    :goto_28
    :try_start_17
    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 197
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v9, "Database error querying filters. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 199
    invoke-virtual {v1, v9, v11, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    if-eqz v15, :cond_35

    goto :goto_27

    .line 201
    :cond_35
    :goto_29
    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :catchall_a
    move-exception v0

    :goto_2a
    if-eqz v15, :cond_36

    .line 195
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_36
    throw v0

    :cond_37
    move-object/from16 v58, v1

    .line 202
    :goto_2b
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/util/Set;

    .line 203
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 204
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v8

    .line 205
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v8

    const-string v9, "Skipping failed audience ID"

    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2c

    .line 206
    :cond_39
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 207
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x1

    :goto_2d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzej;

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-direct {v12, v10, v13, v8, v11}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzz;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzej;)V

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzd:Ljava/lang/Long;

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/zzz;->zze:Ljava/lang/Long;

    .line 208
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->zzb()I

    move-result v11

    invoke-direct {v10, v8, v11}, Lcom/google/android/gms/measurement/internal/zzz;->zzf(II)Z

    move-result v20

    move-object v13, v12

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    move-object/from16 v19, v5

    .line 209
    invoke-virtual/range {v13 .. v20}, Lcom/google/android/gms/measurement/internal/zzw;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzfo;JLcom/google/android/gms/measurement/internal/zzap;Z)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 210
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/google/android/gms/measurement/internal/zzz;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v13

    .line 211
    invoke-virtual {v13, v12}, Lcom/google/android/gms/measurement/internal/zzt;->zzc(Lcom/google/android/gms/measurement/internal/zzx;)V

    goto :goto_2d

    :cond_3a
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/util/Set;

    .line 212
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3b
    if-nez v11, :cond_38

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/util/Set;

    .line 213
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    :cond_3c
    move-object/from16 v1, v58

    const/4 v12, 0x2

    goto/16 :goto_22

    .line 214
    :cond_3d
    :goto_2e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto/16 :goto_3f

    .line 294
    :cond_3e
    new-instance v1, Landroidx/collection/ArrayMap;

    .line 215
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 216
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgh;

    .line 217
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgh;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_46

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v5

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 220
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 221
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v7, Landroidx/collection/ArrayMap;

    .line 223
    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 220
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    :try_start_18
    const-string v0, "audience_id"

    const-string v8, "data"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x2

    new-array v15, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v15, v8
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_12
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    const/4 v8, 0x1

    :try_start_19
    aput-object v4, v15, v8
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_11
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    :try_start_1a
    const-string v12, "property_filters"

    const-string v14, "app_id=? AND property_name=?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 224
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_12
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    .line 225
    :try_start_1b
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_10
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    if-eqz v0, :cond_43

    const/4 v8, 0x1

    .line 226
    :cond_40
    :try_start_1c
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 227
    :try_start_1d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzes;->zzc()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzl(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzes;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    const/4 v9, 0x0

    .line 230
    :try_start_1e
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 231
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-nez v12, :cond_41

    new-instance v12, Ljava/util/ArrayList;

    .line 232
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_41
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :catch_d
    move-exception v0

    const/4 v9, 0x0

    .line 298
    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 228
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    .line 229
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v11

    const-string v12, "Failed to merge filter"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    :goto_30
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_f
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    if-nez v0, :cond_40

    if-eqz v15, :cond_42

    .line 236
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_42
    move-object v0, v7

    goto :goto_35

    :catch_e
    move-exception v0

    goto :goto_32

    :cond_43
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 237
    :try_start_1f
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    if-eqz v15, :cond_44

    .line 236
    :goto_31
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_35

    :catch_f
    move-exception v0

    goto :goto_34

    :catchall_b
    move-exception v0

    goto :goto_36

    :catch_10
    move-exception v0

    const/4 v8, 0x1

    :goto_32
    const/4 v9, 0x0

    goto :goto_34

    :catch_11
    move-exception v0

    goto :goto_33

    :catchall_c
    move-exception v0

    const/4 v15, 0x0

    goto :goto_36

    :catch_12
    move-exception v0

    const/4 v8, 0x1

    :goto_33
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 297
    :goto_34
    :try_start_20
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 238
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v5

    .line 239
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v5

    const-string v7, "Database error querying filters. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 240
    invoke-virtual {v5, v7, v6, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    if-eqz v15, :cond_44

    goto :goto_31

    .line 242
    :cond_44
    :goto_35
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :catchall_d
    move-exception v0

    :goto_36
    if-eqz v15, :cond_45

    .line 236
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_45
    throw v0

    :cond_46
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 243
    :goto_37
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/util/Set;

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 272
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v3, "Skipping failed audience ID"

    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2f

    .line 245
    :cond_47
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 246
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzes;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 247
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    .line 248
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzq()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    .line 249
    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_49

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 250
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    .line 251
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v11

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 253
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->zzj()Z

    move-result v14

    if-eqz v14, :cond_48

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->zza()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3a

    :cond_48
    const/4 v15, 0x0

    :goto_3a
    const-string v14, "Evaluating filter. audience, filter, property"

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 254
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v8

    .line 255
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzeg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-virtual {v11, v14, v13, v15, v8}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 257
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v8

    .line 258
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v8

    const-string v9, "Filter definition"

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 259
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzu()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    .line 260
    invoke-virtual {v11, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzp(Lcom/google/android/gms/internal/measurement/zzes;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    :cond_49
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->zzj()Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->zza()I

    move-result v8

    const/16 v9, 0x100

    if-le v8, v9, :cond_4a

    goto :goto_3b

    .line 271
    :cond_4a
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-direct {v8, v10, v9, v5, v7}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzz;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzes;)V

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzd:Ljava/lang/Long;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzz;->zze:Ljava/lang/Long;

    .line 262
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->zza()I

    move-result v7

    invoke-direct {v10, v5, v7}, Lcom/google/android/gms/measurement/internal/zzz;->zzf(II)Z

    move-result v7

    .line 263
    invoke-virtual {v8, v9, v11, v3, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzgh;Z)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 264
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/google/android/gms/measurement/internal/zzz;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v9

    .line 265
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzt;->zzc(Lcom/google/android/gms/measurement/internal/zzx;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_39

    :cond_4b
    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/util/Set;

    .line 270
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 261
    :cond_4c
    :goto_3b
    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 266
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v6

    .line 267
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v6

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 268
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->zzj()Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->zza()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3c

    :cond_4d
    const/4 v15, 0x0

    :goto_3c
    const-string v7, "Invalid property filter ID. appId, id"

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 269
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e

    :cond_4e
    const/4 v12, 0x2

    :goto_3d
    if-nez v7, :cond_4f

    :goto_3e
    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/util/Set;

    .line 271
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4f
    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_38

    .line 214
    :cond_50
    :goto_3f
    new-instance v1, Ljava/util/ArrayList;

    .line 274
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/util/Map;

    .line 275
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/util/Set;

    .line 276
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 277
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_51
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/util/Map;

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzt;

    .line 279
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(I)Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    .line 281
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 282
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    .line 283
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzd()Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzY()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 284
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzih;->zzbs()[B

    move-result-object v0

    new-instance v6, Landroid/content/ContentValues;

    .line 287
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    .line 288
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "audience_id"

    .line 289
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "current_results"

    .line 290
    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 283
    :try_start_21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "audience_filter_values"
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_14

    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 291
    :try_start_22
    invoke-virtual {v0, v4, v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v11, -0x1

    cmp-long v0, v6, v11

    if-nez v0, :cond_51

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 292
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v4, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 294
    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_22} :catch_13

    goto :goto_40

    :catch_13
    move-exception v0

    goto :goto_41

    :catch_14
    move-exception v0

    const/4 v8, 0x0

    .line 70
    :goto_41
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 295
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 296
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v4, "Error storing filter results. appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 297
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_40

    :cond_52
    return-object v1

    :catchall_e
    move-exception v0

    :goto_42
    if-eqz v15, :cond_53

    .line 64
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_53
    throw v0

    :goto_43
    nop

    goto :goto_43
.end method

.method protected final zzb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
