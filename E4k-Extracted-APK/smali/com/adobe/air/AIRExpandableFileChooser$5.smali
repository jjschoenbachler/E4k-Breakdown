.class Lcom/adobe/air/AIRExpandableFileChooser$5;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRExpandableFileChooser;->createInvisibleMultipleFileSelectionView()V
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

    .line 532
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$5;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 535
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$5;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$1200(Lcom/adobe/air/AIRExpandableFileChooser;)V

    .line 536
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$5;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;

    move-result-object p1

    const-string p2, "cancel"

    invoke-virtual {p1, p2}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    return-void
.end method
