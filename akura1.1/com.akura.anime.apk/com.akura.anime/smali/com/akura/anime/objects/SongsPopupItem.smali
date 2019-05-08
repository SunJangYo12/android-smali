.class public Lcom/akura/anime/objects/SongsPopupItem;
.super Ljava/lang/Object;
.source "SongsPopupItem.java"


# static fields
.field public static final CANCEL:I = 0x6

.field public static final CANCEL_DOWNLOAD:I = 0x5

.field public static final LISTEN_OFFLINE:I = 0x4

.field public static final LISTEN_ONLINE:I = 0x3

.field public static final PLAYLIST_ADD:I = 0x1

.field public static final PLAYLIST_DEL:I = 0x2


# instance fields
.field public id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/akura/anime/objects/SongsPopupItem;->id:I

    .line 18
    iput-object p2, p0, Lcom/akura/anime/objects/SongsPopupItem;->title:Ljava/lang/String;

    .line 19
    return-void
.end method
