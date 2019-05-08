.class public Lcom/google/android/gms/internal/zzda;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation


# instance fields
.field private final zzAa:Lcom/google/android/gms/internal/zzda;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzzY:J

.field private final zzzZ:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzda;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/zzda;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzda;->zzzY:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzda;->zzzZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzda;->zzAa:Lcom/google/android/gms/internal/zzda;

    return-void
.end method


# virtual methods
.method getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzda;->zzzY:J

    return-wide v0
.end method

.method zzex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzda;->zzzZ:Ljava/lang/String;

    return-object v0
.end method

.method zzey()Lcom/google/android/gms/internal/zzda;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzda;->zzAa:Lcom/google/android/gms/internal/zzda;

    return-object v0
.end method
