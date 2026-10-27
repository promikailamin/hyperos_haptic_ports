.class final Lcom/android/server/tv/TvInputManagerService$TvInputState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvInputState"
.end annotation


# instance fields
.field private info:Landroid/media/tv/TvInputInfo;

.field private inputNumber:I

.field private state:I

.field private uid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->inputNumber:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->inputNumber:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2997
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService$TvInputState-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 3001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
