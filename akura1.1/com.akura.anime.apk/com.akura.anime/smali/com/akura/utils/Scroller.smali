.class public Lcom/akura/utils/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Scroller"


# instance fields
.field Timer_Tick:Ljava/lang/Runnable;

.field Timer_Wake:Ljava/lang/Runnable;

.field private mActivity:Landroid/app/Activity;

.field private mIncr:Z

.field private mScroller:Landroid/widget/HorizontalScrollView;

.field private mText:Landroid/widget/TextView;

.field private scrollMax:I

.field private scrollPos:I

.field private scrollTimer:Ljava/util/Timer;

.field private sleepTimer:Ljava/util/Timer;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/HorizontalScrollView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "sview"    # Landroid/widget/HorizontalScrollView;
    .param p3, "tview"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    .line 19
    iput-object v0, p0, Lcom/akura/utils/Scroller;->scrollTimer:Ljava/util/Timer;

    .line 20
    iput-object v0, p0, Lcom/akura/utils/Scroller;->sleepTimer:Ljava/util/Timer;

    .line 95
    new-instance v0, Lcom/akura/utils/Scroller$1;

    invoke-direct {v0, p0}, Lcom/akura/utils/Scroller$1;-><init>(Lcom/akura/utils/Scroller;)V

    iput-object v0, p0, Lcom/akura/utils/Scroller;->Timer_Tick:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lcom/akura/utils/Scroller$2;

    invoke-direct {v0, p0}, Lcom/akura/utils/Scroller$2;-><init>(Lcom/akura/utils/Scroller;)V

    iput-object v0, p0, Lcom/akura/utils/Scroller;->Timer_Wake:Ljava/lang/Runnable;

    .line 28
    iput-object p1, p0, Lcom/akura/utils/Scroller;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/akura/utils/Scroller;->mScroller:Landroid/widget/HorizontalScrollView;

    .line 30
    iput-object p3, p0, Lcom/akura/utils/Scroller;->mText:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/akura/utils/Scroller;->mScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 33
    iput v1, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    .line 34
    const/16 v0, 0x800

    iput v0, p0, Lcom/akura/utils/Scroller;->scrollMax:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/akura/utils/Scroller;->text:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/akura/utils/Scroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/utils/Scroller;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->moveScrollView()V

    return-void
.end method

.method static synthetic access$100(Lcom/akura/utils/Scroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/akura/utils/Scroller;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->resume()V

    return-void
.end method

.method static synthetic access$200(Lcom/akura/utils/Scroller;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/akura/utils/Scroller;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/akura/utils/Scroller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private moveScrollView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 167
    iget-boolean v1, p0, Lcom/akura/utils/Scroller;->mIncr:Z

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/akura/utils/Scroller;->mScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    .line 171
    iget v1, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    iget v2, p0, Lcom/akura/utils/Scroller;->scrollMax:I

    if-lt v1, v2, :cond_2

    .line 173
    iput-boolean v6, p0, Lcom/akura/utils/Scroller;->mIncr:Z

    .line 175
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->stopScroll()V

    .line 177
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->startSleep()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/akura/utils/Scroller;->mScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-double v2, v1

    sub-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    .line 185
    iget v1, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    if-gtz v1, :cond_2

    .line 187
    iput-boolean v7, p0, Lcom/akura/utils/Scroller;->mIncr:Z

    .line 189
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->stopScroll()V

    .line 191
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->startSleep()V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/akura/utils/Scroller;->mScroller:Landroid/widget/HorizontalScrollView;

    iget v2, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    invoke-virtual {v1, v2, v6}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 198
    iget-object v1, p0, Lcom/akura/utils/Scroller;->mScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 199
    .local v0, "x":I
    iget v1, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    if-eq v0, v1, :cond_0

    .line 201
    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 203
    iput v0, p0, Lcom/akura/utils/Scroller;->scrollMax:I

    goto :goto_0

    .line 205
    :cond_3
    if-nez v0, :cond_0

    .line 207
    iget v1, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    if-ne v1, v7, :cond_0

    .line 209
    iget-object v1, p0, Lcom/akura/utils/Scroller;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/akura/utils/Scroller;->stop(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resume()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->stopScroll()V

    .line 92
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->startScroll()V

    .line 93
    return-void
.end method

.method private startScroll()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1e

    .line 131
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/akura/utils/Scroller;->scrollTimer:Ljava/util/Timer;

    .line 133
    iget-object v0, p0, Lcom/akura/utils/Scroller;->scrollTimer:Ljava/util/Timer;

    new-instance v1, Lcom/akura/utils/Scroller$4;

    invoke-direct {v1, p0}, Lcom/akura/utils/Scroller$4;-><init>(Lcom/akura/utils/Scroller;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 141
    return-void
.end method

.method private startSleep()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/akura/utils/Scroller;->sleepTimer:Ljava/util/Timer;

    .line 117
    iget-object v0, p0, Lcom/akura/utils/Scroller;->sleepTimer:Ljava/util/Timer;

    new-instance v1, Lcom/akura/utils/Scroller$3;

    invoke-direct {v1, p0}, Lcom/akura/utils/Scroller$3;-><init>(Lcom/akura/utils/Scroller;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 125
    return-void
.end method

.method private stopScroll()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/akura/utils/Scroller;->scrollTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/akura/utils/Scroller;->scrollTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/utils/Scroller;->scrollTimer:Ljava/util/Timer;

    .line 152
    :cond_0
    return-void
.end method

.method private stopSleep()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/akura/utils/Scroller;->sleepTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/akura/utils/Scroller;->sleepTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akura/utils/Scroller;->sleepTimer:Ljava/util/Timer;

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/akura/utils/Scroller;->text:Ljava/lang/String;

    return-object v0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->stopScroll()V

    .line 80
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->stopSleep()V

    .line 82
    const/16 v0, 0x800

    iput v0, p0, Lcom/akura/utils/Scroller;->scrollMax:I

    .line 84
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->startScroll()V

    .line 86
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/akura/utils/Scroller;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/akura/utils/Scroller;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akura/utils/Scroller;->mIncr:Z

    .line 53
    iput v2, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    .line 54
    const/16 v0, 0x800

    iput v0, p0, Lcom/akura/utils/Scroller;->scrollMax:I

    .line 56
    iget-object v0, p0, Lcom/akura/utils/Scroller;->mScroller:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lcom/akura/utils/Scroller;->scrollPos:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 58
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->stopScroll()V

    .line 59
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->stopSleep()V

    .line 60
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->startSleep()V

    .line 62
    iput-object p1, p0, Lcom/akura/utils/Scroller;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public stop(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/akura/utils/Scroller;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->stopScroll()V

    .line 72
    invoke-direct {p0}, Lcom/akura/utils/Scroller;->stopSleep()V

    .line 74
    iput-object p1, p0, Lcom/akura/utils/Scroller;->text:Ljava/lang/String;

    .line 75
    return-void
.end method
