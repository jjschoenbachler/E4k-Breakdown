.class public Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;
.super Lcom/adobe/fre/FREContext;
.source "DatePickerDialogContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnTimeChangeListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$CancelListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyTimePickerDialog;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$updateTitle;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$updateMessage;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$isShowing;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$dismiss;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$shake;,
        Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "DatePickerDialogContext"


# instance fields
.field private _dialog:Landroid/app/AlertDialog;

.field private _timeAndDatePicker:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_dialog:Landroid/app/AlertDialog;

    .line 40
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_timeAndDatePicker:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    return-void
.end method

.method static synthetic access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;
    .locals 0

    .line 35
    iget-object p0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 35
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;
    .locals 0

    .line 35
    iget-object p0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_timeAndDatePicker:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    return-object p0
.end method

.method static synthetic access$102(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;)Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;
    .locals 0

    .line 35
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_timeAndDatePicker:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    return-object p1
.end method

.method static synthetic access$200(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZIZJJ)Landroid/app/AlertDialog;
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p14}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->creatDateDialog(Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZIZJJ)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(IIIZJJ)Ljava/util/Calendar;
    .locals 0

    .line 35
    invoke-static/range {p0 .. p7}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->validate(IIIZJJ)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method private creatDateDialog(Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZIZJJ)Landroid/app/AlertDialog;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p5

    move-object/from16 v2, p6

    move/from16 v11, p8

    :try_start_0
    const-string v3, ","

    move-object/from16 v4, p4

    .line 274
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    .line 277
    aget-object v4, v3, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x1

    .line 278
    aget-object v4, v3, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v10, 0x2

    .line 279
    aget-object v4, v3, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v4, 0x3

    .line 280
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v4, 0x4

    .line 281
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const-string v3, "time"

    .line 283
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xb

    if-eqz v3, :cond_1

    .line 284
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_0

    .line 285
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyTimePickerDialog;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 p9, v2

    move-object/from16 p10, p1

    move-object/from16 p11, v3

    move/from16 p12, v8

    move/from16 p13, v16

    move/from16 p14, p7

    invoke-direct/range {p9 .. p14}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyTimePickerDialog;-><init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIZ)V

    goto/16 :goto_2

    .line 287
    :cond_0
    new-instance v17, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyTimePickerDialog;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move v5, v8

    move/from16 v6, v16

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyTimePickerDialog;-><init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIZI)V

    move-object/from16 v2, v17

    goto/16 :goto_2

    :cond_1
    const-string v3, "date"

    .line 289
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_2

    .line 291
    new-instance v16, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v8, p10

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    invoke-direct/range {v2 .. v12}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;-><init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIZJJ)V

    :goto_0
    move-object/from16 v2, v16

    goto/16 :goto_2

    .line 293
    :cond_2
    new-instance v16, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v8, p10

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    move/from16 v13, p9

    invoke-direct/range {v2 .. v13}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyDatePickerDialog;-><init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIZJJI)V

    goto :goto_0

    .line 296
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v2, v4, :cond_4

    .line 297
    :try_start_1
    new-instance v12, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v2, v12

    move-object/from16 v3, p1

    move/from16 v9, v16

    move/from16 v10, p7

    move/from16 v11, p10

    move-object v0, v12

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    invoke-direct/range {v2 .. v15}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;-><init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIIIZZJJ)V

    iput-object v0, v1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_timeAndDatePicker:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    .line 298
    iget-object v0, v1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_timeAndDatePicker:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    invoke-virtual {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->create()Landroid/app/AlertDialog;

    move-result-object v2

    :goto_1
    move-object/from16 v0, p2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_4

    .line 300
    :cond_4
    new-instance v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v2, v0

    move-object/from16 v3, p1

    move/from16 v9, v16

    move/from16 v10, p7

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move/from16 v16, p9

    invoke-direct/range {v2 .. v16}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;-><init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIIIZZJJI)V

    iput-object v0, v1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_timeAndDatePicker:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    .line 301
    iget-object v0, v1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_timeAndDatePicker:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;

    invoke-virtual {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_5

    const-string v3, ""

    .line 305
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 306
    invoke-static/range {p2 .. p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p3

    if-eqz v0, :cond_6

    const-string v3, ""

    .line 308
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 309
    invoke-static/range {p3 .. p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_6
    const/4 v0, -0x1

    move-object/from16 v3, p5

    if-eqz v3, :cond_8

    .line 311
    array-length v4, v3

    if-lez v4, :cond_8

    const/4 v4, 0x0

    .line 312
    aget-object v5, v3, v4

    new-instance v6, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v7, p1

    :try_start_2
    invoke-direct {v6, v7, v4}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;-><init>(Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {v2, v0, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 313
    array-length v0, v3

    const/4 v5, 0x1

    if-le v0, v5, :cond_7

    const/4 v0, -0x3

    .line 314
    aget-object v4, v3, v5

    new-instance v6, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;

    invoke-direct {v6, v7, v5}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;-><init>(Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {v2, v0, v4, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 316
    :cond_7
    array-length v0, v3

    const/4 v4, 0x2

    if-le v0, v4, :cond_9

    const/4 v0, -0x2

    .line 317
    aget-object v3, v3, v4

    new-instance v6, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;

    invoke-direct {v6, v7, v4}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;-><init>(Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {v2, v0, v3, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v7, p1

    const-string v3, "OK"

    .line 320
    new-instance v6, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;

    invoke-direct {v6, v7, v4}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;-><init>(Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {v2, v0, v3, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_9
    :goto_3
    move/from16 v0, p8

    .line 323
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    if-ne v0, v5, :cond_a

    .line 325
    new-instance v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$CancelListener;

    invoke-direct {v0, v7}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$CancelListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    return-object v2

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v14

    :goto_4
    const-string v2, "error"

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DatePickerDialogContext   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static validate(IIIZJJ)Ljava/util/Calendar;
    .locals 2

    .line 398
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x1

    .line 399
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 400
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 401
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    if-eqz p3, :cond_1

    .line 404
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 405
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p3, p1, p4

    if-gez p3, :cond_0

    .line 407
    invoke-virtual {v0, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p2, p0, p6

    if-lez p2, :cond_1

    .line 411
    invoke-virtual {v0, p6, p7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "DatePickerDialogContext"

    const-string v1, "Disposing Extension Context"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->_dialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    const-string v0, "DatePickerDialogContext"

    const-string v1, "Registering Extension Functions"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "show"

    .line 63
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismiss"

    .line 64
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$dismiss;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$dismiss;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isShowing"

    .line 65
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$isShowing;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$isShowing;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateMessage"

    .line 66
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$updateMessage;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$updateMessage;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateTitle"

    .line 67
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$updateTitle;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$updateTitle;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shake"

    .line 68
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$shake;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$shake;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setDate"

    .line 69
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$setDate;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
