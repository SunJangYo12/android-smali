.class public abstract Lcom/google/android/gms/internal/zzsd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsd$zzd;,
        Lcom/google/android/gms/internal/zzsd$zzc;,
        Lcom/google/android/gms/internal/zzsd$zzb;,
        Lcom/google/android/gms/internal/zzsd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzwP:I

.field private final zzwQ:Ljava/lang/String;

.field private final zzwR:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzsd;->zzwP:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsd;->zzwQ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzsd;->zzwR:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzsh;->zzyE()Lcom/google/android/gms/internal/zzse;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzsd;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzsd$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzsd;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzsd$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsd$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzsd$zza;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzsd$zzb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzsd$zzb;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzsd$zzb;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzsd$zzc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzsd$zzc;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzsd$zzc;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static zzc(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsd$zzd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsd$zzd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzsd$zzd;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzsh;->zzyF()Lcom/google/android/gms/internal/zzsf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzsf;->zzb(Lcom/google/android/gms/internal/zzsd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsd;->zzwQ:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzsd;->zzwP:I

    return v0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzsg;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzsg;",
            ")TT;"
        }
    .end annotation
.end method

.method public zzeq()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsd;->zzwR:Ljava/lang/Object;

    return-object v0
.end method
