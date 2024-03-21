.class Lcom/adobe/air/AIRExpandableFileChooser$1;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRExpandableFileChooser;-><init>(Ljava/util/ArrayList;ZZLjava/lang/String;Lcom/adobe/air/FileChooserStub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRExpandableFileChooser;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRExpandableFileChooser;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$1;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 311
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 313
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$1;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;

    move-result-object p1

    const-string p2, "cancel"

    invoke-virtual {p1, p2}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
