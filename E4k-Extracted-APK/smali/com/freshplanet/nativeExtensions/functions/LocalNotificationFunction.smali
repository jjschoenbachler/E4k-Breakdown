.class public Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;
.super Ljava/lang/Object;
.source "LocalNotificationFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static DEFAULT_NOTIFICATION_ID:I = 0x2f145

.field private static RECURRENCE_DAY:I = 0x1

.field private static RECURRENCE_MONTH:I = 0x3

.field private static RECURRENCE_NONE:I = 0x0

.field private static RECURRENCE_WEEK:I = 0x2

.field private static RECURRENCE_YEAR:I = 0x4

.field private static TAG:Ljava/lang/String; = "LocalNotificationFunction"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 59
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Amazon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v0, "push notifications disabled on amazon devices, ignoring local notification"

    .line 60
    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    return-object v3

    .line 67
    :cond_0
    sget v2, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;->RECURRENCE_NONE:I

    .line 68
    sget v4, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;->DEFAULT_NOTIFICATION_ID:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 71
    :try_start_0
    aget-object v8, v0, v5

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    const/4 v9, 0x1

    .line 72
    :try_start_1
    aget-object v9, v0, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    int-to-long v9, v9

    const/4 v11, 0x2

    .line 73
    :try_start_2
    aget-object v11, v0, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 74
    :try_start_3
    array-length v12, v0

    const/4 v13, 0x4

    if-lt v12, v13, :cond_1

    const/4 v12, 0x3

    .line 75
    aget-object v12, v0, v12

    invoke-virtual {v12}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v12

    move v2, v12

    .line 77
    :cond_1
    array-length v12, v0

    const/4 v14, 0x5

    if-ne v12, v14, :cond_2

    .line 78
    aget-object v0, v0, v13

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v4, v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_9

    :catch_5
    move-exception v0

    move-object v11, v3

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v11, v3

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v11, v3

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v11, v3

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v11, v3

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v11, v3

    goto :goto_0

    :catch_b
    move-exception v0

    move-object v11, v3

    goto :goto_2

    :catch_c
    move-exception v0

    move-object v11, v3

    goto :goto_4

    :catch_d
    move-exception v0

    move-object v11, v3

    goto :goto_6

    :catch_e
    move-exception v0

    move-object v11, v3

    goto :goto_8

    :catch_f
    move-exception v0

    move-object v8, v3

    move-object v11, v8

    :goto_0
    move-wide v9, v6

    .line 90
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catch_10
    move-exception v0

    move-object v8, v3

    move-object v11, v8

    :goto_2
    move-wide v9, v6

    .line 88
    :goto_3
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_a

    :catch_11
    move-exception v0

    move-object v8, v3

    move-object v11, v8

    :goto_4
    move-wide v9, v6

    .line 86
    :goto_5
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_a

    :catch_12
    move-exception v0

    move-object v8, v3

    move-object v11, v8

    :goto_6
    move-wide v9, v6

    .line 84
    :goto_7
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_a

    :catch_13
    move-exception v0

    move-object v8, v3

    move-object v11, v8

    :goto_8
    move-wide v9, v6

    .line 82
    :goto_9
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 92
    :cond_2
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">> set local notification, now="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;->timestampToDate(J)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">> message="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">> title="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">> recurrenceType="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">> translationID="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    if-eqz v8, :cond_9

    cmp-long v0, v9, v6

    if-lez v0, :cond_9

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, v9

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 101
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v12, v9, v6

    if-lez v12, :cond_3

    const-string v0, "timestamp is older than current time"

    .line 102
    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    return-object v3

    .line 106
    :cond_3
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/freshplanet/nativeExtensions/LocalBroadcastReceiver;

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v11, :cond_4

    const-string v10, "contentTitle"

    .line 109
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v10, "contentText"

    .line 111
    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "tid"

    .line 117
    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0xc000000

    .line 119
    invoke-static {v0, v4, v9, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-string v8, "alarm"

    .line 127
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/AlarmManager;

    .line 128
    invoke-virtual {v12, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 130
    sget v0, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;->RECURRENCE_DAY:I

    if-ne v2, v0, :cond_5

    const/4 v13, 0x0

    const-wide/32 v16, 0x5265c00

    move-wide v14, v6

    move-object/from16 v18, v4

    .line 131
    invoke-virtual/range {v12 .. v18}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_b

    .line 132
    :cond_5
    sget v0, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;->RECURRENCE_WEEK:I

    if-ne v2, v0, :cond_6

    const/4 v13, 0x0

    const-wide/32 v16, 0x240c8400

    move-wide v14, v6

    move-object/from16 v18, v4

    .line 133
    invoke-virtual/range {v12 .. v18}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_b

    .line 134
    :cond_6
    sget v0, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;->RECURRENCE_MONTH:I

    if-ne v2, v0, :cond_7

    const/4 v13, 0x0

    const-wide/32 v16, 0x39777800

    move-wide v14, v6

    move-object/from16 v18, v4

    .line 135
    invoke-virtual/range {v12 .. v18}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_b

    .line 136
    :cond_7
    sget v0, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;->RECURRENCE_YEAR:I

    if-ne v2, v0, :cond_8

    const/4 v13, 0x0

    const-wide/32 v16, 0x65d83400

    move-wide v14, v6

    move-object/from16 v18, v4

    .line 137
    invoke-virtual/range {v12 .. v18}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_b

    .line 139
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> set timestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v12, v5, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 143
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setting params to run at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Lcom/freshplanet/nativeExtensions/functions/LocalNotificationFunction;->timestampToDate(J)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    goto :goto_c

    :cond_9
    const-string v0, "cannot set local notification, not enough params"

    .line 146
    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    :goto_c
    return-object v3
.end method

.method public timestampToDate(J)Ljava/util/Date;
    .locals 2

    .line 152
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 153
    new-instance p1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1
.end method
