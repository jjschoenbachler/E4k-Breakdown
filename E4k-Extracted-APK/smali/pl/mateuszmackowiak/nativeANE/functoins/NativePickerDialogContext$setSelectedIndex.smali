.class public Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setSelectedIndex;
.super Ljava/lang/Object;
.source "NativePickerDialogContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "setSelectedIndex"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "setSelectedIndex"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setSelectedIndex;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    const/4 v0, 0x0

    .line 109
    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v0

    const/4 v1, 0x1

    .line 110
    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result p2

    .line 112
    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setSelectedIndex;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-static {v1}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->access$100(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setSelectedIndex;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-static {v1}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->access$100(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->getPickers()[Lkankan/wheel/widget/WheelView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    .line 114
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 115
    aget-object v0, v1, v0

    invoke-virtual {v0, p2}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "error"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
