.class public final Lkotlin/script/experimental/api/ErrorHandlingKt;
.super Ljava/lang/Object;
.source "errorHandling.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nerrorHandling.kt\nKotlin\n*S Kotlin\n*F\n+ 1 errorHandling.kt\nkotlin/script/experimental/api/ErrorHandlingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,296:1\n161#1,15:297\n161#1,15:312\n281#1,3:327\n284#1:331\n1#2:330\n*E\n*S KotlinDebug\n*F\n+ 1 errorHandling.kt\nkotlin/script/experimental/api/ErrorHandlingKt\n*L\n146#1,15:297\n156#1,15:312\n289#1,3:327\n289#1:331\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000z\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004\u00a2\u0006\u0002\u0010\u0005\u001a&\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u001a\u0014\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\r\u001aB\u0010\u000e\u001a\u00020\u0004*\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u001a4\u0010\u000e\u001a\u00020\u0004*\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u001a,\u0010\u0015\u001a\u00020\u0004*\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u001a\u001e\u0010\u0015\u001a\u00020\u0004*\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u001a+\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u0017\"\u0004\u0008\u0000\u0010\u0018*\u0002H\u00182\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\r\u00a2\u0006\u0002\u0010\u0019\u001aN\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00180\r0\u001b\"\u0004\u0008\u0000\u0010\u001c\"\u0004\u0008\u0001\u0010\u0018*\u0008\u0012\u0004\u0012\u0002H\u001c0\u001d2\u001e\u0010\u001e\u001a\u001a\u0012\u0004\u0012\u0002H\u001c\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00180 0\u001b0\u001fH\u0086\u0008\u00f8\u0001\u0000\u001aH\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00180\r0\u001b\"\u0004\u0008\u0000\u0010\u001c\"\u0004\u0008\u0001\u0010\u0018*\u0008\u0012\u0004\u0012\u0002H\u001c0\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u0002H\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00180\u001b0\u001fH\u0086\u0008\u00f8\u0001\u0000\u001an\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H#0\r0\u001b\"\u0004\u0008\u0000\u0010\u001c\"\u0004\u0008\u0001\u0010$\"\u0004\u0008\u0002\u0010#*\u0008\u0012\u0004\u0012\u0002H\u001c0\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u0002H\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H$0\u001b0\u001f2\u001e\u0010%\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H#0\'\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u00020(0&H\u0086\u0008\u00f8\u0001\u0000\u001a<\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001b\"\u0004\u0008\u0000\u0010\u0018*\u0008\u0012\u0004\u0012\u0002H\u00180\u001b2\u0018\u0010\u001e\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00180\u001b\u0012\u0004\u0012\u00020(0\u001fH\u0086\u0008\u00f8\u0001\u0000\u001aB\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H#0\u001b\"\u0004\u0008\u0000\u0010$\"\u0004\u0008\u0001\u0010#*\u0008\u0012\u0004\u0012\u0002H$0\u001b2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u0002H$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H#0\u001b0\u001fH\u0086\u0008\u00f8\u0001\u0000\u001a-\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001b\"\u0004\u0008\u0000\u0010\u0018*\u0008\u0012\u0004\u0012\u00020\u00040\r2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001bH\u0086\u0002\u001a5\u0010-\u001a\u0002H\u0018\"\u0004\u0008\u0000\u0010\u0018*\u0008\u0012\u0004\u0012\u0002H\u00180\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020.0\u001fH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/\u001a\u001d\u00100\u001a\u0004\u0018\u0001H\u0018\"\u0004\u0008\u0000\u0010\u0018*\u0008\u0012\u0004\u0012\u0002H\u00180\u001b\u00a2\u0006\u0002\u00101\u001a\u001b\u00102\u001a\u0002H\u0018\"\u0004\u0008\u0000\u0010\u0018*\u0008\u0012\u0004\u0012\u0002H\u00180\u001b\u00a2\u0006\u0002\u00101\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u00063"
    }
    d2 = {
        "makeFailureResult",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;",
        "reports",
        "",
        "Lkotlin/script/experimental/api/ScriptDiagnostic;",
        "([Lkotlin/script/experimental/api/ScriptDiagnostic;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;",
        "message",
        "",
        "path",
        "location",
        "Lkotlin/script/experimental/api/SourceCode$Location;",
        "locationWithId",
        "Lkotlin/script/experimental/api/SourceCode$LocationWithId;",
        "",
        "asDiagnostics",
        "",
        "code",
        "",
        "customMessage",
        "severity",
        "Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;",
        "asErrorDiagnostics",
        "asSuccess",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;",
        "R",
        "(Ljava/lang/Object;Ljava/util/List;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;",
        "flatMapSuccess",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics;",
        "T",
        "",
        "body",
        "Lkotlin/Function1;",
        "",
        "mapSuccess",
        "mapSuccessImpl",
        "R2",
        "R1",
        "updateResults",
        "Lkotlin/Function2;",
        "",
        "",
        "onFailure",
        "onSuccess",
        "plus",
        "result",
        "valueOr",
        "",
        "(Lkotlin/script/experimental/api/ResultWithDiagnostics;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "valueOrNull",
        "(Lkotlin/script/experimental/api/ResultWithDiagnostics;)Ljava/lang/Object;",
        "valueOrThrow",
        "kotlin-scripting-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final asDiagnostics(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 8
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/script/experimental/api/SourceCode$Location;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "severity"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v3, p2

    move-object v1, v0

    move v2, p1

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lkotlin/script/experimental/api/ScriptDiagnostic;-><init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final asDiagnostics(Ljava/lang/Throwable;ILjava/lang/String;Lkotlin/script/experimental/api/SourceCode$LocationWithId;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 7
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/api/SourceCode$LocationWithId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "severity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v3, p2

    move-object v1, v0

    move v2, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lkotlin/script/experimental/api/ScriptDiagnostic;-><init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Lkotlin/script/experimental/api/SourceCode$LocationWithId;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static synthetic asDiagnostics$default(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;ILjava/lang/Object;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, -0x2

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move-object p7, v0

    goto :goto_0

    :cond_1
    move-object p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 236
    sget-object p5, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->ERROR:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v1

    move-object p6, v0

    move-object p7, v2

    .line 231
    invoke-static/range {p2 .. p7}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asDiagnostics(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;)Lkotlin/script/experimental/api/ScriptDiagnostic;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic asDiagnostics$default(Ljava/lang/Throwable;ILjava/lang/String;Lkotlin/script/experimental/api/SourceCode$LocationWithId;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;ILjava/lang/Object;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, -0x2

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 247
    sget-object p4, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->ERROR:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    .line 243
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asDiagnostics(Ljava/lang/Throwable;ILjava/lang/String;Lkotlin/script/experimental/api/SourceCode$LocationWithId;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;)Lkotlin/script/experimental/api/ScriptDiagnostic;

    move-result-object p0

    return-object p0
.end method

.method public static final asErrorDiagnostics(Ljava/lang/String;ILjava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/api/SourceCode$Location;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic;

    sget-object v4, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->ERROR:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v0

    move v2, p1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Lkotlin/script/experimental/api/ScriptDiagnostic;-><init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final asErrorDiagnostics(Ljava/lang/String;ILkotlin/script/experimental/api/SourceCode$LocationWithId;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/SourceCode$LocationWithId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic;

    sget-object v4, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->ERROR:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lkotlin/script/experimental/api/ScriptDiagnostic;-><init>(ILjava/lang/String;Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;Lkotlin/script/experimental/api/SourceCode$LocationWithId;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic asErrorDiagnostics$default(Ljava/lang/String;ILjava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;ILjava/lang/Object;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 254
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asErrorDiagnostics(Ljava/lang/String;ILjava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;)Lkotlin/script/experimental/api/ScriptDiagnostic;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic asErrorDiagnostics$default(Ljava/lang/String;ILkotlin/script/experimental/api/SourceCode$LocationWithId;ILjava/lang/Object;)Lkotlin/script/experimental/api/ScriptDiagnostic;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    .line 264
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asErrorDiagnostics(Ljava/lang/String;ILkotlin/script/experimental/api/SourceCode$LocationWithId;)Lkotlin/script/experimental/api/ScriptDiagnostic;

    move-result-object p0

    return-object p0
.end method

.method public static final asSuccess(Ljava/lang/Object;Ljava/util/List;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/ScriptDiagnostic;",
            ">;)",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics$Success<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reports"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-direct {v0, p0, p1}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic asSuccess$default(Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 201
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asSuccess(Ljava/lang/Object;Ljava/util/List;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    move-result-object p0

    return-object p0
.end method

.method public static final flatMapSuccess(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Lkotlin/script/experimental/api/ResultWithDiagnostics;
    .locals 4
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+",
            "Ljava/util/Collection<",
            "+TR;>;>;>;)",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "Ljava/util/List<",
            "TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 315
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    .line 316
    invoke-virtual {v2}, Lkotlin/script/experimental/api/ResultWithDiagnostics;->getReports()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    instance-of v3, v2, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    if-eqz v3, :cond_0

    .line 319
    check-cast v2, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-virtual {v2}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .line 157
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 322
    :cond_0
    new-instance p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;-><init>(Ljava/util/List;)V

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    goto :goto_1

    .line 326
    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asSuccess(Ljava/lang/Object;Ljava/util/List;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    move-result-object p0

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    :goto_1
    return-object p0
.end method

.method public static final makeFailureResult(Ljava/lang/String;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/SourceCode$Location;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/script/experimental/api/ScriptDiagnostic;

    const/4 v2, -0x1

    invoke-static {p0, v2, p1, p2}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asErrorDiagnostics(Ljava/lang/String;ILjava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;)Lkotlin/script/experimental/api/ScriptDiagnostic;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-direct {v0, v1}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;-><init>([Lkotlin/script/experimental/api/ScriptDiagnostic;)V

    return-object v0
.end method

.method public static final makeFailureResult(Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$LocationWithId;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/script/experimental/api/SourceCode$LocationWithId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/script/experimental/api/ScriptDiagnostic;

    const/4 v2, -0x1

    invoke-static {p0, v2, p1}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asErrorDiagnostics(Ljava/lang/String;ILkotlin/script/experimental/api/SourceCode$LocationWithId;)Lkotlin/script/experimental/api/ScriptDiagnostic;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-direct {v0, v1}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;-><init>([Lkotlin/script/experimental/api/ScriptDiagnostic;)V

    return-object v0
.end method

.method public static final makeFailureResult(Ljava/util/List;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/ScriptDiagnostic;",
            ">;)",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reports"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    invoke-direct {v0, p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final varargs makeFailureResult([Lkotlin/script/experimental/api/ScriptDiagnostic;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;
    .locals 1
    .param p0    # [Lkotlin/script/experimental/api/ScriptDiagnostic;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reports"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic makeFailureResult$default(Ljava/lang/String;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;ILjava/lang/Object;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;
    .locals 1

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 219
    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/script/experimental/api/ErrorHandlingKt;->makeFailureResult(Ljava/lang/String;Ljava/lang/String;Lkotlin/script/experimental/api/SourceCode$Location;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    move-result-object p0

    return-object p0
.end method

.method public static final mapSuccess(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Lkotlin/script/experimental/api/ResultWithDiagnostics;
    .locals 4
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR;>;>;)",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "Ljava/util/List<",
            "TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 300
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    .line 301
    invoke-virtual {v2}, Lkotlin/script/experimental/api/ResultWithDiagnostics;->getReports()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    instance-of v3, v2, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    if-eqz v3, :cond_0

    .line 304
    check-cast v2, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-virtual {v2}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .line 147
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_0
    new-instance p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;-><init>(Ljava/util/List;)V

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    goto :goto_1

    .line 311
    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asSuccess(Ljava/lang/Object;Ljava/util/List;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    move-result-object p0

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    :goto_1
    return-object p0
.end method

.method public static final mapSuccessImpl(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlin/script/experimental/api/ResultWithDiagnostics;
    .locals 4
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR1;>;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "TR2;>;-TR1;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "Ljava/util/List<",
            "TR2;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateResults"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 164
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    .line 165
    invoke-virtual {v2}, Lkotlin/script/experimental/api/ResultWithDiagnostics;->getReports()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    instance-of v3, v2, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    if-eqz v3, :cond_0

    .line 168
    check-cast v2, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-virtual {v2}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_0
    new-instance p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;-><init>(Ljava/util/List;)V

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    return-object p0

    .line 175
    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/script/experimental/api/ErrorHandlingKt;->asSuccess(Ljava/lang/Object;Ljava/util/List;)Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    move-result-object p0

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    return-object p0
.end method

.method public static final onFailure(Lkotlin/script/experimental/api/ResultWithDiagnostics;Lkotlin/jvm/functions/Function1;)Lkotlin/script/experimental/api/ResultWithDiagnostics;
    .locals 1
    .param p0    # Lkotlin/script/experimental/api/ResultWithDiagnostics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    instance-of v0, p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static final onSuccess(Lkotlin/script/experimental/api/ResultWithDiagnostics;Lkotlin/jvm/functions/Function1;)Lkotlin/script/experimental/api/ResultWithDiagnostics;
    .locals 1
    .param p0    # Lkotlin/script/experimental/api/ResultWithDiagnostics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR1;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TR1;+",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR2;>;>;)",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "TR2;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    instance-of v0, p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics;->getReports()Ljava/util/List;

    move-result-object v0

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-virtual {p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    invoke-static {v0, p0}, Lkotlin/script/experimental/api/ErrorHandlingKt;->plus(Ljava/util/List;Lkotlin/script/experimental/api/ResultWithDiagnostics;)Lkotlin/script/experimental/api/ResultWithDiagnostics;

    move-result-object p0

    goto :goto_0

    .line 137
    :cond_0
    instance-of p1, p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    if-eqz p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final plus(Ljava/util/List;Lkotlin/script/experimental/api/ResultWithDiagnostics;)Lkotlin/script/experimental/api/ResultWithDiagnostics;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/script/experimental/api/ResultWithDiagnostics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/ScriptDiagnostic;",
            ">;",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR;>;)",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    instance-of v0, p1, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    move-object v1, p1

    check-cast v1, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-virtual {v1}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1}, Lkotlin/script/experimental/api/ResultWithDiagnostics;->getReports()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    check-cast v0, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    goto :goto_0

    .line 195
    :cond_0
    instance-of v0, p1, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1}, Lkotlin/script/experimental/api/ResultWithDiagnostics;->getReports()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;-><init>(Ljava/util/List;)V

    check-cast v0, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final valueOr(Lkotlin/script/experimental/api/ResultWithDiagnostics;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlin/script/experimental/api/ResultWithDiagnostics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function1;",
            ")TR;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    instance-of v0, p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-virtual {p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 283
    :cond_0
    instance-of v0, p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final valueOrNull(Lkotlin/script/experimental/api/ResultWithDiagnostics;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlin/script/experimental/api/ResultWithDiagnostics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    instance-of v0, p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-virtual {p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final valueOrThrow(Lkotlin/script/experimental/api/ResultWithDiagnostics;)Ljava/lang/Object;
    .locals 10
    .param p0    # Lkotlin/script/experimental/api/ResultWithDiagnostics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    instance-of v0, p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-virtual {p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 329
    :cond_0
    instance-of v0, p0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    .line 291
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics;->getReports()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "\n"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v0, Lkotlin/script/experimental/api/ErrorHandlingKt$valueOrThrow$1$1;->INSTANCE:Lkotlin/script/experimental/api/ErrorHandlingKt$valueOrThrow$1$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ResultWithDiagnostics;->getReports()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/script/experimental/api/ScriptDiagnostic;

    invoke-virtual {v3}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getException()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    check-cast v1, Lkotlin/script/experimental/api/ScriptDiagnostic;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lkotlin/script/experimental/api/ScriptDiagnostic;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 290
    :goto_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :goto_3
    nop

    goto :goto_3
.end method
