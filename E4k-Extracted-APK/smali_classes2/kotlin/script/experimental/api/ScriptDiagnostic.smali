.class public final Lkotlin/script/experimental/api/ScriptDiagnostic;
.super Ljava/lang/Object;
.source "errorHandling.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;,
        Lkotlin/script/experimental/api/ScriptDiagnostic$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nerrorHandling.kt\nKotlin\n*S Kotlin\n*F\n+ 1 errorHandling.kt\nkotlin/script/experimental/api/ScriptDiagnostic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,296:1\n1#2:297\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\n\u0008\u0086\u0008\u0018\u0000 .2\u00020\u0001:\u0002./B7\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cBC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003JK\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001J\u0013\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001J.\u0010(\u001a\u00020\u00052\u0008\u0008\u0002\u0010)\u001a\u00020$2\u0008\u0008\u0002\u0010*\u001a\u00020$2\u0008\u0008\u0002\u0010+\u001a\u00020$2\u0008\u0008\u0002\u0010,\u001a\u00020$J\u0008\u0010-\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\u00a8\u00060"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ScriptDiagnostic;",
        "Ljava/io/Serializable;",
        "code",
        "",
        "message",
        "",
        "severity",
        "Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;",
        "locationWithId",
        "Lkotlin/script/experimental/api/SourceCode$LocationWithId;",
        "exception",
        "",
        "(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Lkotlin/script/experimental/api/SourceCode$LocationWithId;Ljava/lang/Throwable;)V",
        "sourcePath",
        "location",
        "Lkotlin/script/experimental/api/SourceCode$Location;",
        "(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;)V",
        "getCode",
        "()I",
        "getException",
        "()Ljava/lang/Throwable;",
        "getLocation",
        "()Lkotlin/script/experimental/api/SourceCode$Location;",
        "getMessage",
        "()Ljava/lang/String;",
        "getSeverity",
        "()Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;",
        "getSourcePath",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "render",
        "withSeverity",
        "withLocation",
        "withException",
        "withStackTrace",
        "toString",
        "Companion",
        "Severity",
        "kotlin-scripting-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lkotlin/script/experimental/api/ScriptDiagnostic$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final incompleteCode:I = -0x3

.field private static final serialVersionUID:J = 0x0L

.field public static final unspecifiedError:I = -0x1

.field public static final unspecifiedException:I = -0x2

.field public static final unspecifiedInfo:I


# instance fields
.field private final code:I

.field private final exception:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final location:Lkotlin/script/experimental/api/SourceCode$Location;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final severity:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sourcePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/script/experimental/api/ScriptDiagnostic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptDiagnostic;->Companion:Lkotlin/script/experimental/api/ScriptDiagnostic$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/script/experimental/api/SourceCode$Location;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "severity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->code:I

    .line 25
    iput-object p2, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->message:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->severity:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    .line 27
    iput-object p4, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->sourcePath:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->location:Lkotlin/script/experimental/api/SourceCode$Location;

    .line 29
    iput-object p6, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 26
    sget-object p3, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->ERROR:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    const/4 p8, 0x0

    if-eqz p3, :cond_1

    move-object v4, p8

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    move-object v5, p8

    goto :goto_1

    :cond_2
    move-object v5, p5

    :goto_1
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    move-object v6, p8

    goto :goto_2

    :cond_3
    move-object v6, p6

    :goto_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 23
    invoke-direct/range {v0 .. v6}, Lkotlin/script/experimental/api/ScriptDiagnostic;-><init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Lkotlin/script/experimental/api/SourceCode$LocationWithId;Ljava/lang/Throwable;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/script/experimental/api/SourceCode$LocationWithId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "severity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move-object v6, v0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p4}, Lkotlin/script/experimental/api/SourceCode$LocationWithId;->getCodeLocationId()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_0
    if-nez p4, :cond_1

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p4}, Lkotlin/script/experimental/api/SourceCode$LocationWithId;->getLocationInText()Lkotlin/script/experimental/api/SourceCode$Location;

    move-result-object v0

    goto :goto_1

    :goto_2
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lkotlin/script/experimental/api/ScriptDiagnostic;-><init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Lkotlin/script/experimental/api/SourceCode$LocationWithId;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 39
    sget-object p3, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->ERROR:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 36
    invoke-direct/range {v0 .. v5}, Lkotlin/script/experimental/api/ScriptDiagnostic;-><init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Lkotlin/script/experimental/api/SourceCode$LocationWithId;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/api/ScriptDiagnostic;ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->code:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->message:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->severity:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->sourcePath:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->location:Lkotlin/script/experimental/api/SourceCode$Location;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->exception:Ljava/lang/Throwable;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lkotlin/script/experimental/api/ScriptDiagnostic;->copy(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;)Lkotlin/script/experimental/api/ScriptDiagnostic;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic render$default(Lkotlin/script/experimental/api/ScriptDiagnostic;ZZZZILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 54
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/script/experimental/api/ScriptDiagnostic;->render(ZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->code:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->severity:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lkotlin/script/experimental/api/SourceCode$Location;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->location:Lkotlin/script/experimental/api/SourceCode$Location;

    return-object v0
.end method

.method public final component6()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/script/experimental/api/SourceCode$Location;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "severity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lkotlin/script/experimental/api/ScriptDiagnostic;-><init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/script/experimental/api/ScriptDiagnostic;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/api/ScriptDiagnostic;

    iget v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->code:I

    iget v3, p1, Lkotlin/script/experimental/api/ScriptDiagnostic;->code:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->message:Ljava/lang/String;

    iget-object v3, p1, Lkotlin/script/experimental/api/ScriptDiagnostic;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->severity:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    iget-object v3, p1, Lkotlin/script/experimental/api/ScriptDiagnostic;->severity:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->sourcePath:Ljava/lang/String;

    iget-object v3, p1, Lkotlin/script/experimental/api/ScriptDiagnostic;->sourcePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->location:Lkotlin/script/experimental/api/SourceCode$Location;

    iget-object v3, p1, Lkotlin/script/experimental/api/ScriptDiagnostic;->location:Lkotlin/script/experimental/api/SourceCode$Location;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->exception:Ljava/lang/Throwable;

    iget-object p1, p1, Lkotlin/script/experimental/api/ScriptDiagnostic;->exception:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCode()I
    .locals 1

    .line 24
    iget v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->code:I

    return v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getLocation()Lkotlin/script/experimental/api/SourceCode$Location;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->location:Lkotlin/script/experimental/api/SourceCode$Location;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeverity()Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->severity:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    return-object v0
.end method

.method public final getSourcePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 27
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->code:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->severity:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    invoke-virtual {v1}, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->sourcePath:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->location:Lkotlin/script/experimental/api/SourceCode$Location;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->location:Lkotlin/script/experimental/api/SourceCode$Location;

    invoke-virtual {v1}, Lkotlin/script/experimental/api/SourceCode$Location;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptDiagnostic;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final render(ZZZZ)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getSeverity()Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    if-eqz p2, :cond_4

    .line 65
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getSourcePath()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getLocation()Lkotlin/script/experimental/api/SourceCode$Location;

    move-result-object p2

    if-eqz p2, :cond_4

    :cond_1
    const-string p2, " ("

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getSourcePath()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/4 v2, 0x2

    invoke-static {p2, v1, p1, v2, p1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_0
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getLocation()Lkotlin/script/experimental/api/SourceCode$Location;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x3a

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p2}, Lkotlin/script/experimental/api/SourceCode$Location;->getStart()Lkotlin/script/experimental/api/SourceCode$Position;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/script/experimental/api/SourceCode$Position;->getLine()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2}, Lkotlin/script/experimental/api/SourceCode$Location;->getStart()Lkotlin/script/experimental/api/SourceCode$Position;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/script/experimental/api/SourceCode$Position;->getCol()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const/16 p2, 0x29

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p3, :cond_5

    .line 76
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getException()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p2, ": "

    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getException()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_5

    .line 80
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast p2, Ljava/io/Closeable;

    check-cast p1, Ljava/lang/Throwable;

    :try_start_0
    move-object p3, p2

    check-cast p3, Ljava/io/ByteArrayOutputStream;

    .line 81
    new-instance p4, Ljava/io/PrintStream;

    move-object v1, p3

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {p4, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 83
    invoke-virtual {p4}, Ljava/io/PrintStream;->flush()V

    const-string p4, "\n"

    .line 84
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception p3

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 59
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    .line 44
    invoke-static/range {v0 .. v6}, Lkotlin/script/experimental/api/ScriptDiagnostic;->render$default(Lkotlin/script/experimental/api/ScriptDiagnostic;ZZZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
