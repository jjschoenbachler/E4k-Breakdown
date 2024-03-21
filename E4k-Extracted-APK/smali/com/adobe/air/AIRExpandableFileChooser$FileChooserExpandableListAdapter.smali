.class Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AIRExpandableFileChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRExpandableFileChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileChooserExpandableListAdapter"
.end annotation


# instance fields
.field private mRuntimeInflater:Landroid/view/LayoutInflater;

.field private mRuntimeResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/adobe/air/AIRExpandableFileChooser;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeInflater:Landroid/view/LayoutInflater;

    .line 191
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeResources:Landroid/content/res/Resources;

    .line 195
    iput-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeInflater:Landroid/view/LayoutInflater;

    .line 196
    iput-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p4, :cond_1

    .line 213
    instance-of p3, p4, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    if-nez p3, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    check-cast p4, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    move-object p3, p4

    goto :goto_1

    .line 214
    :cond_1
    :goto_0
    new-instance p3, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeResources:Landroid/content/res/Resources;

    move-object v0, p3

    move-object v4, p5

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Landroid/view/ViewGroup;II)V

    .line 219
    :goto_1
    iget-object p4, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p4}, Lcom/adobe/air/AIRExpandableFileChooser;->access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    const-string p5, "FILEINFO"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    invoke-virtual {p3, p4, p1, p2}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->bindToData(Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;II)V

    return-object p3
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_0

    .line 250
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->mRuntimeInflater:Landroid/view/LayoutInflater;

    const p3, 0x1090006

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p2, 0x1020014

    .line 254
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 256
    iget-object p4, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p4}, Lcom/adobe/air/AIRExpandableFileChooser;->access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p4, "TYPE"

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
