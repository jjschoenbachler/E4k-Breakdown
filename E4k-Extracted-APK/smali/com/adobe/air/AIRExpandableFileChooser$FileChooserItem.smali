.class Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;
.super Landroid/widget/LinearLayout;
.source "AIRExpandableFileChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRExpandableFileChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileChooserItem"
.end annotation


# instance fields
.field private mFileCheckBox:Landroid/widget/CompoundButton;

.field private mFileNameView:Landroid/widget/TextView;

.field private mFilePathView:Landroid/widget/TextView;

.field private mListFlatPosition:I

.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field final synthetic this$0:Lcom/adobe/air/AIRExpandableFileChooser;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Landroid/view/ViewGroup;II)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    .line 99
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-direct {p0, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p4, -0x1

    .line 94
    iput p4, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListFlatPosition:I

    .line 101
    invoke-static {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$000(Lcom/adobe/air/AIRExpandableFileChooser;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "expandable_multiple_chooser_row"

    .line 103
    invoke-static {p4, p3, p2}, Lcom/adobe/air/utils/Utils;->GetLayoutView(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string p4, "filename"

    .line 105
    invoke-static {p4, p3, p2}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileNameView:Landroid/widget/TextView;

    const-string p4, "filepath"

    .line 106
    invoke-static {p4, p3, p2}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFilePathView:Landroid/widget/TextView;

    const-string p4, "filecheck"

    .line 107
    invoke-static {p4, p3, p2}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CompoundButton;

    iput-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    .line 109
    iget-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileNameView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFilePathView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    .line 113
    :cond_0
    invoke-static {p1, p5, p6}, Lcom/adobe/air/AIRExpandableFileChooser;->access$100(Lcom/adobe/air/AIRExpandableFileChooser;II)I

    move-result p3

    iput p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListFlatPosition:I

    .line 114
    new-instance p3, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem$1;

    invoke-direct {p3, p0, p1}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem$1;-><init>(Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;Lcom/adobe/air/AIRExpandableFileChooser;)V

    iput-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 134
    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string p1, "expandable_chooser_row"

    .line 138
    invoke-static {p1, p3, p2}, Lcom/adobe/air/utils/Utils;->GetLayoutView(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "filename"

    .line 140
    invoke-static {p3, p2, p1}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileNameView:Landroid/widget/TextView;

    const-string p3, "filepath"

    .line 141
    invoke-static {p3, p2, p1}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFilePathView:Landroid/widget/TextView;

    .line 143
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileNameView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFilePathView:Landroid/widget/TextView;

    .line 146
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method static synthetic access$200(Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListFlatPosition:I

    return p0
.end method


# virtual methods
.method public bindToData(Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;II)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileNameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFilePathView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$000(Lcom/adobe/air/AIRExpandableFileChooser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v0, p2, p3}, Lcom/adobe/air/AIRExpandableFileChooser;->access$100(Lcom/adobe/air/AIRExpandableFileChooser;II)I

    move-result p2

    iput p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListFlatPosition:I

    .line 157
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    iget-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {p3}, Lcom/adobe/air/AIRExpandableFileChooser;->access$300(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/util/SparseBooleanArray;

    move-result-object p3

    iget v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListFlatPosition:I

    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 159
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    iget-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    iput-object p0, p1, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mParent:Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$000(Lcom/adobe/air/AIRExpandableFileChooser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 169
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$300(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v2, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListFlatPosition:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public uncheck()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$000(Lcom/adobe/air/AIRExpandableFileChooser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 180
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mFileCheckBox:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
