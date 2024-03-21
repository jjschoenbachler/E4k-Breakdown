.class public Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;
.super Lcom/adobe/fre/FREContext;
.source "ProgressDialogContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateTitle;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setCancelable;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateMessage;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$isShowing;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$dismiss;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setIndeterminate;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateSecondary;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateProgress;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setMax;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$shake;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "ProgressContext"


# instance fields
.field private MAX_PROGRESS:I

.field private dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->dialog:Landroid/app/ProgressDialog;

    const/16 v0, 0x64

    .line 24
    iput v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->MAX_PROGRESS:I

    return-void
.end method

.method static synthetic access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;
    .locals 0

    .line 19
    iget-object p0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->dialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$002(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 19
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)I
    .locals 0

    .line 19
    iget p0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->MAX_PROGRESS:I

    return p0
.end method

.method static synthetic access$102(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;I)I
    .locals 0

    .line 19
    iput p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->MAX_PROGRESS:I

    return p1
.end method


# virtual methods
.method public createProgressDialog(Lcom/adobe/fre/FREContext;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IIZZ)Landroid/app/ProgressDialog;
    .locals 2

    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    new-instance p8, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p8, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    move-object p8, v0

    :goto_0
    if-eqz p5, :cond_1

    :try_start_0
    const-string v0, ""

    .line 334
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    invoke-static {p5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p5

    invoke-virtual {p8, p5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_4

    :cond_1
    :goto_1
    if-eqz p6, :cond_2

    const-string p5, ""

    .line 336
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_2

    .line 337
    invoke-static {p6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p5

    invoke-virtual {p8, p5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 339
    :cond_2
    invoke-virtual {p8, p2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/4 p5, 0x1

    if-ne p2, p5, :cond_6

    if-ne p10, p5, :cond_3

    .line 342
    invoke-virtual {p8, p10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_3

    :cond_3
    if-lt p7, p5, :cond_4

    .line 345
    invoke-virtual {p8, p7}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_2

    .line 347
    :cond_4
    iget p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->MAX_PROGRESS:I

    invoke-virtual {p8, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    :goto_2
    if-eqz p3, :cond_5

    .line 349
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p8, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_5
    if-eqz p4, :cond_6

    .line 351
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p8, p2}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 354
    :cond_6
    :goto_3
    invoke-virtual {p8, p9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 356
    new-instance p2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;

    invoke-direct {p2, p0, p1}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p8, p2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    const-string p3, "error"

    .line 358
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ProgressContext   "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object p8
.end method

.method public dispose()V
    .locals 2

    const-string v0, "ProgressContext"

    const-string v1, "Disposing Extension Context"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->dialog:Landroid/app/ProgressDialog;

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

    const-string v0, "ProgressContext"

    const-string v1, "Registering Extension Functions"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "showProgressPopup"

    .line 42
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismiss"

    .line 43
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$dismiss;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$dismiss;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isShowing"

    .line 44
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$isShowing;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$isShowing;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCancelable"

    .line 45
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setCancelable;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setCancelable;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateTitle"

    .line 46
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateTitle;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateTitle;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateMessage"

    .line 47
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateMessage;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateMessage;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setIndeterminate"

    .line 48
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setIndeterminate;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setIndeterminate;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateSecondary"

    .line 49
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateSecondary;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateSecondary;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateProgress"

    .line 50
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateProgress;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateProgress;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setMax"

    .line 51
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setMax;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setMax;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shake"

    .line 52
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$shake;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$shake;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
