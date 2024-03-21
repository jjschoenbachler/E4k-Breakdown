.class Lcom/adobe/air/AIRExpandableFileChooser$4;
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

    .line 508
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 511
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 512
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 515
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 518
    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v3, v0, v2}, Lcom/adobe/air/AIRExpandableFileChooser;->access$100(Lcom/adobe/air/AIRExpandableFileChooser;II)I

    move-result v3

    .line 519
    iget-object v4, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v4}, Lcom/adobe/air/AIRExpandableFileChooser;->access$300(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v3}, Lcom/adobe/air/AIRExpandableFileChooser;->access$1100(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 522
    iget-object v4, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v4}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "FILEINFO"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v3, v3, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;

    move-result-object p1

    const-string p2, "done"

    invoke-virtual {p1, p2}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    return-void
.end method
