.class Lcom/adobe/air/AIRExpandableFileChooser$2;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 347
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$2;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 350
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    .line 352
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$2;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$700(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    .line 356
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$2;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p2}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$2;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p2}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$2;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;

    move-result-object p1

    const-string p2, "done"

    invoke-virtual {p1, p2}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$2;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$2;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p2}, Lcom/adobe/air/AIRExpandableFileChooser;->access$700(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/adobe/air/AIRExpandableFileChooser;->access$900(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/View;)V

    .line 364
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$2;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$1000(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/AndroidAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidAlertDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
