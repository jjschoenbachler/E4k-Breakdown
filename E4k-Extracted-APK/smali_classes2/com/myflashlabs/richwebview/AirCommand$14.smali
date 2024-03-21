.class Lcom/myflashlabs/richwebview/AirCommand$14;
.super Ljava/lang/Object;
.source "AirCommand.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/AirCommand;->initNewInstance(IIIILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/AirCommand;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/AirCommand;I)V
    .locals 0

    .line 3100
    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$14;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    iput p2, p0, Lcom/myflashlabs/richwebview/AirCommand$14;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 3107
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 3109
    sget-object p1, Lcom/myflashlabs/richwebview/ExConst;->BACK_PRESSED:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"id\":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/myflashlabs/richwebview/AirCommand$14;->val$id:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
