.class public final Lcom/google/android/gms/internal/ads/zzemt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzerx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzerx<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzbdl;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Z

.field public final zzd:Ljava/lang/String;

.field public final zze:F

.field public final zzf:I

.field public final zzg:I

.field public final zzh:Ljava/lang/String;

.field public final zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the adSize must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzd:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzemt;->zze:F

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzg:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzh:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzi:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzf(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "smart_w"

    const-string v4, "full"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "smart_h"

    const-string v4, "auto"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "ene"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zzj:Z

    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzfbd;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    const-string v3, "rafmt"

    const-string v4, "102"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 5
    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzbdl;->zzm:Z

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "rafmt"

    const-string v4, "103"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 6
    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzbdl;->zzn:Z

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "rafmt"

    const-string v4, "105"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 7
    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzbdl;->zzo:Z

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "inline_adaptive_slot"

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzi:Z

    .line 8
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzfbd;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    const-string v3, "interscroller_slot"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 9
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zzo:Z

    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzfbd;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    const-string v0, "format"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzb:Ljava/lang/String;

    .line 10
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fluid"

    const-string v3, "height"

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzc:Z

    .line 11
    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzd:Ljava/lang/String;

    const-string v3, "sz"

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v2

    .line 13
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "u_sd"

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zze:F

    .line 14
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "sw"

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzf:I

    .line 15
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "sh"

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzg:I

    .line 16
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzh:Ljava/lang/String;

    const-string v3, "sc"

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-static {p1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdl;->zzg:[Lcom/google/android/gms/internal/ads/zzbdl;

    if-nez v2, :cond_2

    new-instance v1, Landroid/os/Bundle;

    .line 20
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "height"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 21
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "width"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 22
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "is_fluid_height"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 23
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbdl;->zzi:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_2
    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    .line 25
    aget-object v4, v2, v1

    new-instance v5, Landroid/os/Bundle;

    .line 26
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "is_fluid_height"

    .line 27
    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zzi:Z

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "height"

    .line 28
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "width"

    .line 29
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const-string v1, "valid_ad_sizes"

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
