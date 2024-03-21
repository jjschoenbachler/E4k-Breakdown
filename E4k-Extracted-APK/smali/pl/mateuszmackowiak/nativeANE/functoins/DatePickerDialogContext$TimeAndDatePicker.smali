.class Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;
.super Landroid/app/AlertDialog$Builder;
.source "DatePickerDialogContext.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeAndDatePicker"
.end annotation


# instance fields
.field private datePicker:Landroid/widget/DatePicker;

.field private timePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIIIZZJJ)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v2, p2

    .line 424
    invoke-direct {v15, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    .line 425
    invoke-virtual/range {v0 .. v14}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->createContent(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIIIZZJJI)V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIIIZZJJI)V
    .locals 0

    .line 430
    invoke-direct {p0, p2, p14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 431
    invoke-virtual/range {p0 .. p14}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->createContent(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIIIZZJJI)V

    return-void
.end method


# virtual methods
.method public createContent(Lcom/adobe/fre/FREContext;Landroid/content/Context;IIIIIZZJJI)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    .line 437
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 439
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 440
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    .line 441
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 442
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 444
    new-instance v4, Landroid/widget/TimePicker;

    invoke-direct {v4, p2}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->timePicker:Landroid/widget/TimePicker;

    .line 445
    iget-object v4, v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 446
    iget-object v4, v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 447
    iget-object v4, v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 448
    iget-object v4, v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->timePicker:Landroid/widget/TimePicker;

    new-instance v5, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnTimeChangeListener;

    move-object v7, p1

    invoke-direct {v5, p1}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnTimeChangeListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 449
    iget-object v4, v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    new-instance v4, Landroid/widget/DatePicker;

    invoke-direct {v4, p2}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->datePicker:Landroid/widget/DatePicker;

    .line 452
    iget-object v1, v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->datePicker:Landroid/widget/DatePicker;

    new-instance v4, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;

    move-object v6, v4

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move-wide/from16 v11, p12

    invoke-direct/range {v6 .. v12}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$MyOnDateChangeListenr;-><init>(Lcom/adobe/fre/FREContext;ZJJ)V

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 453
    iget-object v1, v0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 456
    invoke-virtual {p0, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    .line 464
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->datePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public getTimePicker()Landroid/widget/TimePicker;
    .locals 1

    .line 460
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$TimeAndDatePicker;->timePicker:Landroid/widget/TimePicker;

    return-object v0
.end method
