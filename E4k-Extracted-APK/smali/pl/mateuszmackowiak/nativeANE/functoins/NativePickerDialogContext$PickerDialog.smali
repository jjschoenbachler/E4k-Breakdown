.class Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;
.super Landroid/app/AlertDialog$Builder;
.source "NativePickerDialogContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickerDialog"
.end annotation


# instance fields
.field private pickers:[Lkankan/wheel/widget/WheelView;

.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/fre/FREArray;[I[D)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;
        }
    .end annotation

    move-object v9, p0

    move-object v0, p1

    .line 299
    iput-object v0, v9, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    move-object v2, p3

    .line 300
    invoke-direct {p0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 301
    invoke-virtual/range {v0 .. v8}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->createContent(Lcom/adobe/fre/FREContext;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/fre/FREArray;[I[DI)V

    return-void
.end method

.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/fre/FREArray;[I[DI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;
        }
    .end annotation

    move-object v9, p0

    move-object v0, p1

    .line 304
    iput-object v0, v9, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    move-object v2, p3

    move/from16 v8, p9

    .line 305
    invoke-direct {p0, p3, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 306
    invoke-virtual/range {v0 .. v8}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->createContent(Lcom/adobe/fre/FREContext;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/fre/FREArray;[I[DI)V

    return-void
.end method


# virtual methods
.method public createContent(Lcom/adobe/fre/FREContext;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/fre/FREArray;[I[DI)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p8

    if-eqz p3, :cond_0

    .line 316
    invoke-static/range {p3 .. p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 318
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 321
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    .line 323
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x1

    .line 324
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 326
    invoke-virtual/range {p5 .. p5}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v8

    long-to-int v8, v8

    .line 328
    new-array v9, v8, [Lkankan/wheel/widget/WheelView;

    iput-object v9, v0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->pickers:[Lkankan/wheel/widget/WheelView;

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_6

    int-to-long v10, v9

    move-object/from16 v12, p5

    .line 336
    invoke-virtual {v12, v10, v11}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v10

    check-cast v10, Lcom/adobe/fre/FREArray;

    invoke-static {v10}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToStringArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v10

    .line 337
    new-instance v11, Lkankan/wheel/widget/WheelView;

    invoke-direct {v11, v1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    .line 340
    iget-object v13, v0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->pickers:[Lkankan/wheel/widget/WheelView;

    aput-object v11, v13, v9

    .line 342
    new-instance v13, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-direct {v13, v1, v10}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    const/16 v10, 0x12

    .line 343
    invoke-virtual {v13, v10}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V

    .line 344
    invoke-virtual {v11, v13}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    const/4 v10, 0x2

    const v14, -0xcc4a1b

    const/4 v15, 0x5

    if-eq v3, v10, :cond_4

    const/4 v10, 0x4

    if-ne v3, v10, :cond_1

    goto :goto_2

    :cond_1
    const/4 v10, 0x3

    if-eq v3, v10, :cond_3

    if-ne v3, v15, :cond_2

    goto :goto_1

    :cond_2
    const v10, -0x3b3b3c

    .line 359
    invoke-virtual {v13, v10}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextColor(I)V

    .line 360
    invoke-virtual {v11, v5}, Lkankan/wheel/widget/WheelView;->setShadowVisible(Z)V

    goto :goto_3

    .line 355
    :cond_3
    :goto_1
    invoke-virtual {v11, v14}, Lkankan/wheel/widget/WheelView;->setSelectionLineColor(I)V

    .line 356
    invoke-virtual {v11, v5}, Lkankan/wheel/widget/WheelView;->setSelectionOverlineVisible(Z)V

    .line 357
    invoke-virtual {v11, v5}, Lkankan/wheel/widget/WheelView;->setShadowVisible(Z)V

    goto :goto_3

    .line 348
    :cond_4
    :goto_2
    invoke-virtual {v11, v5}, Lkankan/wheel/widget/WheelView;->setSelectionOverlineVisible(Z)V

    .line 349
    invoke-virtual {v11, v5}, Lkankan/wheel/widget/WheelView;->setShadowVisible(Z)V

    .line 350
    invoke-virtual {v11, v14}, Lkankan/wheel/widget/WheelView;->setSelectionLineColor(I)V

    .line 352
    invoke-virtual {v13, v7}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextColor(I)V

    .line 363
    :goto_3
    aget v13, p6, v9

    if-le v13, v7, :cond_5

    .line 365
    invoke-virtual {v11, v13}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 368
    :cond_5
    new-instance v13, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;

    iget-object v14, v0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    move-object/from16 v7, p1

    invoke-direct {v13, v14, v7, v9}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {v11, v13}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 369
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v16, v8

    aget-wide v7, p7, v9

    double-to-int v7, v7

    invoke-direct {v13, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 370
    invoke-virtual {v13, v15, v5, v15, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 372
    invoke-virtual {v4, v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v16

    const/4 v7, -0x1

    goto :goto_0

    .line 374
    :cond_6
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 375
    invoke-virtual {v0, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public getPickers()[Lkankan/wheel/widget/WheelView;
    .locals 1

    .line 310
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->pickers:[Lkankan/wheel/widget/WheelView;

    return-object v0
.end method
