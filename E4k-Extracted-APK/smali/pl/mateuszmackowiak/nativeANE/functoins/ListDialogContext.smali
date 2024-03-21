.class public Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;
.super Lcom/adobe/fre/FREContext;
.source "ListDialogContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$IndexChange;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$SingleChoiceClickListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$CancelListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$show;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$updateTitle;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$setCancelable;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$isShowing;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$dismiss;,
        Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$shake;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "ListDialogContext"


# instance fields
.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)Landroid/app/AlertDialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 22
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static createPopup(Lcom/adobe/fre/FREContext;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/CharSequence;[ZLjava/lang/Integer;ZI)Landroid/app/AlertDialog;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    new-instance p7, Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object p7, v0

    :goto_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, ""

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p7, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 236
    :cond_1
    :goto_1
    invoke-virtual {p7, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    if-ne p6, p1, :cond_2

    .line 238
    new-instance v0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$CancelListener;

    invoke-direct {v0, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$CancelListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-eqz p3, :cond_3

    if-eqz p5, :cond_3

    .line 241
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    new-instance p5, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$SingleChoiceClickListener;

    invoke-direct {p5, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$SingleChoiceClickListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p7, p3, p4, p5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    .line 242
    array-length p5, p4

    array-length v0, p3

    if-ne p5, v0, :cond_5

    .line 243
    :cond_4
    new-instance p5, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$IndexChange;

    invoke-direct {p5, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$IndexChange;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p7, p3, p4, p5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_5
    const-string p3, "error"

    const-string p4, "ListDialogContext  labels are empty or the list of labels is not equal to list of selected labels "

    .line 245
    invoke-virtual {p0, p3, p4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p3, 0x0

    if-eqz p2, :cond_7

    .line 247
    array-length p4, p2

    if-lez p4, :cond_7

    .line 248
    aget-object p4, p2, p3

    new-instance p5, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;

    invoke-direct {p5, p0, p3, p6}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;-><init>(Lcom/adobe/fre/FREContext;IZ)V

    invoke-virtual {p7, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    array-length p3, p2

    if-le p3, p1, :cond_6

    .line 250
    aget-object p3, p2, p1

    new-instance p4, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;

    invoke-direct {p4, p0, p1, p6}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;-><init>(Lcom/adobe/fre/FREContext;IZ)V

    invoke-virtual {p7, p3, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    :cond_6
    array-length p1, p2

    const/4 p3, 0x2

    if-le p1, p3, :cond_8

    .line 252
    aget-object p1, p2, p3

    new-instance p2, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;

    invoke-direct {p2, p0, p3, p6}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;-><init>(Lcom/adobe/fre/FREContext;IZ)V

    invoke-virtual {p7, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_7
    const-string p1, "OK"

    .line 254
    new-instance p2, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;

    invoke-direct {p2, p0, p3, p6}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;-><init>(Lcom/adobe/fre/FREContext;IZ)V

    invoke-virtual {p7, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string p2, "error"

    .line 257
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ListDialogContext   "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_8
    :goto_4
    invoke-virtual {p7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "ListDialogContext"

    const-string v1, "Disposing Extension Context"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->dialog:Landroid/app/AlertDialog;

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

    const-string v0, "ListDialogContext"

    const-string v1, "Registering Extension Functions"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "show"

    .line 44
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$show;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$show;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismiss"

    .line 45
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$dismiss;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$dismiss;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isShowing"

    .line 46
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$isShowing;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$isShowing;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCancelable"

    .line 47
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$setCancelable;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$setCancelable;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateTitle"

    .line 48
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$updateTitle;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$updateTitle;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shake"

    .line 49
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$shake;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$shake;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
