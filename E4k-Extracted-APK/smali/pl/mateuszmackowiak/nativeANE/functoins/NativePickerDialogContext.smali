.class public Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;
.super Lcom/adobe/fre/FREContext;
.source "NativePickerDialogContext.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$CancelListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setCancelable;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$isShowing;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$dismiss;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setSelectedIndex;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$updateTitle;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "PickerDialogContext"


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private pickerDialog:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->dialog:Landroid/app/AlertDialog;

    .line 48
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->pickerDialog:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;

    return-void
.end method

.method static synthetic access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Landroid/app/AlertDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 43
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->pickerDialog:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "PickerDialogContext"

    const-string v1, "Disposing Extension Context"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->pickerDialog:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;

    .line 55
    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 57
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->dialog:Landroid/app/AlertDialog;

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

    const-string v0, "PickerDialogContext"

    const-string v1, "Registering Extension Functions"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "show"

    .line 70
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismiss"

    .line 71
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$dismiss;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$dismiss;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isShowing"

    .line 72
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$isShowing;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$isShowing;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setSelectedIndex"

    .line 73
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setSelectedIndex;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setSelectedIndex;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCancelable"

    .line 74
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setCancelable;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setCancelable;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateTitle"

    .line 75
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$updateTitle;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$updateTitle;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
