.class public Lcom/ipaulpro/afilechooser/FileListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "FileListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOADER_ID:I


# instance fields
.field private mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

.field private mListener:Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/ipaulpro/afilechooser/FileListFragment;
    .locals 3

    .line 71
    new-instance v0, Lcom/ipaulpro/afilechooser/FileListFragment;

    invoke-direct {v0}, Lcom/ipaulpro/afilechooser/FileListFragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "path"

    .line 73
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/ipaulpro/afilechooser/FileListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 106
    sget v0, Lcom/ipaulpro/afilechooser/R$string;->empty_directory:I

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileListFragment;->setListShown(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mListener:Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 90
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " must implement FileListFragment.Callbacks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance p1, Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ipaulpro/afilechooser/FileListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    .line 100
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mPath:Ljava/lang/String;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 130
    new-instance p1, Lcom/ipaulpro/afilechooser/FileLoader;

    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mPath:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/ipaulpro/afilechooser/FileLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 118
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/ipaulpro/afilechooser/FileListAdapter;

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1, p3}, Lcom/ipaulpro/afilechooser/FileListAdapter;->getItem(I)Ljava/io/File;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mPath:Ljava/lang/String;

    .line 123
    iget-object p2, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mListener:Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;

    invoke-interface {p2, p1}, Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;->onFileSelected(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/content/Loader;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/ipaulpro/afilechooser/FileListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 136
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p1, p2}, Lcom/ipaulpro/afilechooser/FileListAdapter;->setListItems(Ljava/util/List;)V

    .line 138
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->isResumed()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0, p2}, Lcom/ipaulpro/afilechooser/FileListFragment;->setListShown(Z)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ipaulpro/afilechooser/FileListFragment;->setListShownNoAnimation(Z)V

    :goto_0
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .line 147
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p1}, Lcom/ipaulpro/afilechooser/FileListAdapter;->clear()V

    return-void
.end method
