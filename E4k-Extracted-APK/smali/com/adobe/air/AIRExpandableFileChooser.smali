.class public Lcom/adobe/air/AIRExpandableFileChooser;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;,
        Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;,
        Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;
    }
.end annotation


# static fields
.field private static final FILEINFO:Ljava/lang/String; = "FILEINFO"

.field public static final TAG:Ljava/lang/String;

.field private static final TYPE:Ljava/lang/String; = "TYPE"

.field private static final USER_ACTION_CANCEL:Ljava/lang/String; = "cancel"

.field private static final USER_ACTION_DONE:Ljava/lang/String; = "done"


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAllowMultiple:Z

.field private mCheckedFiles:Landroid/util/SparseBooleanArray;

.field private mChildData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

.field private mFileChooserStub:Lcom/adobe/air/FileChooserStub;

.field private final mFileProjection:[Ljava/lang/String;

.field private mFileSaveName:Landroid/widget/EditText;

.field private mFilenames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMultipleFileSelectionView:Landroid/view/View;

.field private mRuntimeInflater:Landroid/view/LayoutInflater;

.field private mRuntimeResources:Landroid/content/res/Resources;

.field private mSave:Z

.field private mSelection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AIRExpandableFileChooser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ZZLjava/lang/String;Lcom/adobe/air/FileChooserStub;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lcom/adobe/air/FileChooserStub;",
            ")V"
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mMultipleFileSelectionView:Landroid/view/View;

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    .line 54
    iput-boolean v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    .line 55
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mCheckedFiles:Landroid/util/SparseBooleanArray;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    const-string v2, "_data"

    const-string v3, "_display_name"

    .line 57
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileProjection:[Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    .line 62
    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    .line 64
    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    .line 65
    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    .line 69
    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    .line 275
    iput-boolean p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    .line 276
    iput-boolean p3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    .line 277
    iput-object p5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    if-nez p1, :cond_0

    .line 283
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "*"

    .line 284
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    const/4 p5, 0x1

    if-ge p3, p2, :cond_3

    .line 290
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "*"

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {v0, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 298
    :cond_1
    iget-object p5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_2

    .line 299
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " OR "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    .line 300
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_display_name LIKE \'%"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 303
    :cond_3
    :goto_1
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 305
    new-instance p2, Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/adobe/air/AndroidAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    .line 306
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {p2}, Lcom/adobe/air/AndroidAlertDialog;->GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 307
    new-instance p3, Lcom/adobe/air/AIRExpandableFileChooser$1;

    invoke-direct {p3, p0}, Lcom/adobe/air/AIRExpandableFileChooser$1;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getRuntimeContext()Landroid/content/Context;

    .line 320
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    .line 321
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    const-string p3, "main"

    .line 322
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    invoke-static {p3, v0, v2}, Lcom/adobe/air/utils/Utils;->GetLayoutView(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p3

    .line 324
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "list"

    .line 328
    invoke-static {v2, v0, p3}, Lcom/adobe/air/utils/Utils;->GetWidgetInView(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 330
    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 332
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v3, 0x1020004

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    const-string p1, "file_save_panel"

    .line 334
    invoke-static {p1, v0, p3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 335
    iget-boolean v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_5

    const-string v3, "file_download"

    .line 337
    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v3, v5}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string p1, "file_save_name"

    .line 341
    invoke-static {p1, v0, p3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    if-eqz p4, :cond_4

    .line 344
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/air/utils/Utils;->GetExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_4
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    new-instance p2, Lcom/adobe/air/AIRExpandableFileChooser$2;

    invoke-direct {p2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$2;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const-string p1, "file_save_button"

    .line 372
    invoke-static {p1, v0, p3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 373
    new-instance p2, Lcom/adobe/air/AIRExpandableFileChooser$3;

    invoke-direct {p2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$3;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    const-string p4, "file_upload"

    .line 395
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {p4, v1}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 396
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    const-string p1, "audio_files"

    .line 398
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {p1, p2}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRExpandableFileChooser;->AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "image_files"

    .line 399
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {p1, p2}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRExpandableFileChooser;->AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "video_files"

    .line 400
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {p1, p2}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRExpandableFileChooser;->AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V

    .line 402
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 404
    new-instance p1, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;

    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    iget-object p4, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-direct {p1, p0, p2, p4}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 405
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 406
    invoke-virtual {v2, p5}, Landroid/widget/ExpandableListView;->setItemsCanFocus(Z)V

    const-string p1, "empty"

    .line 407
    invoke-static {p1, v0, p3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 408
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 412
    :cond_6
    invoke-virtual {v2, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 415
    :goto_3
    iget-boolean p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    if-eqz p1, :cond_7

    .line 416
    invoke-direct {p0}, Lcom/adobe/air/AIRExpandableFileChooser;->createInvisibleMultipleFileSelectionView()V

    :cond_7
    return-void
.end method

.method private AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 545
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileProjection:[Ljava/lang/String;

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    .line 548
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    .line 545
    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    .line 551
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "TYPE"

    .line 554
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_1
    new-instance p1, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    const-string v1, "_display_name"

    .line 560
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    .line 561
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v1, v2}, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 563
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "FILEINFO"

    .line 564
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 567
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private HideVirtualKeyboard(Landroid/view/View;)V
    .locals 2

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AIRExpandableFileChooser;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    return p0
.end method

.method static synthetic access$100(Lcom/adobe/air/AIRExpandableFileChooser;II)I
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRExpandableFileChooser;->expandableListPositionToFlatPosition(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/AndroidAlertDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/ExpandableListAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/adobe/air/AIRExpandableFileChooser;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/adobe/air/AIRExpandableFileChooser;->uncheckAll()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mCheckedFiles:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    return-object p0
.end method

.method static synthetic access$700(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRExpandableFileChooser;->HideVirtualKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private createInvisibleMultipleFileSelectionView()V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidAlertDialog;->GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "button_ok"

    .line 507
    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$4;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$4;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "button_cancel"

    .line 531
    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$5;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$5;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private expandableListPositionToFlatPosition(II)I
    .locals 3

    const/4 v0, -0x1

    if-ltz p1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p2, :cond_3

    .line 469
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 477
    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v1, p2

    return v1

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    return v0
.end method

.method private uncheckAll()V
    .locals 7

    .line 486
    iget-boolean v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 492
    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 495
    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "FILEINFO"

    .line 496
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v5, v5, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mParent:Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    if-eqz v5, :cond_1

    .line 498
    invoke-virtual {v5}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->uncheck()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public GetDialog()Lcom/adobe/air/AndroidAlertDialog;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    return-object v0
.end method

.method public GetFileNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 422
    instance-of p1, p2, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 425
    :cond_0
    check-cast p2, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    .line 439
    iget-boolean p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    if-nez p1, :cond_2

    .line 441
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p1, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 442
    iget-boolean p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    if-eqz p2, :cond_1

    .line 444
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    const-string p3, "FILEINFO"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object p1, p1, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 449
    iget-object p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    const-string p3, "FILEINFO"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object p1, p1, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    const-string p2, "done"

    invoke-virtual {p1, p2}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidAlertDialog;->dismiss()V

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->toggle()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
