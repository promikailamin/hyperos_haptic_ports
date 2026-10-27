.class public Lcom/android/server/utils/AnrTimer$Args;
.super Ljava/lang/Object;
.source "AnrTimer.java"


# static fields
.field public static final sLongMethodTracingPoint:Lcom/android/server/utils/AnrTimer$Args$SplitPoint;


# instance fields
.field public mEnable:Z

.field public mExtend:Z

.field public mInjector:Lcom/android/server/utils/AnrTimer$Injector;

.field public final mSplitPoints:Ljava/util/SortedSet;

.field public mTestMode:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEnable(Lcom/android/server/utils/AnrTimer$Args;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/utils/AnrTimer$Args;->mEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExtend(Lcom/android/server/utils/AnrTimer$Args;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestMode(Lcom/android/server/utils/AnrTimer$Args;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/utils/AnrTimer$Args;->mTestMode:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 187
    new-instance v0, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    const/16 v1, 0x32

    const/16 v2, 0x4d54

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;-><init>(II)V

    sput-object v0, Lcom/android/server/utils/AnrTimer$Args;->sLongMethodTracingPoint:Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsDefaultInjector()Lcom/android/server/utils/AnrTimer$Injector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mInjector:Lcom/android/server/utils/AnrTimer$Injector;

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mEnable:Z

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    .line 208
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/server/utils/AnrTimer$Args$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/utils/AnrTimer$Args$$ExternalSyntheticLambda0;-><init>()V

    .line 209
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lcom/android/server/utils/AnrTimer$Args$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/utils/AnrTimer$Args$$ExternalSyntheticLambda1;-><init>()V

    .line 210
    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/server/utils/AnrTimer$Args;->mSplitPoints:Ljava/util/SortedSet;

    .line 213
    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mTestMode:Z

    return-void
.end method


# virtual methods
.method public enable(Z)Lcom/android/server/utils/AnrTimer$Args;
    .registers 2

    .line 222
    iput-boolean p1, p0, Lcom/android/server/utils/AnrTimer$Args;->mEnable:Z

    return-object p0
.end method

.method public extend(Z)Lcom/android/server/utils/AnrTimer$Args;
    .registers 2

    .line 227
    iput-boolean p1, p0, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    return-object p0
.end method

.method public getSplitPercentArray()[I
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mSplitPoints:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 275
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$Args;->mSplitPoints:Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    add-int/lit8 v3, v1, 0x1

    .line 276
    invoke-virtual {v2}, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->percent()I

    move-result v2

    aput v2, v0, v1

    move v1, v3

    goto :goto_f

    :cond_25
    return-object v0
.end method

.method public getSplitTokenArray()[I
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mSplitPoints:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 293
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$Args;->mSplitPoints:Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    add-int/lit8 v3, v1, 0x1

    .line 294
    invoke-virtual {v2}, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->token()I

    move-result v2

    aput v2, v0, v1

    move v1, v3

    goto :goto_f

    :cond_25
    return-object v0
.end method

.method public longMethodTracing(Z)Lcom/android/server/utils/AnrTimer$Args;
    .registers 3

    if-eqz p1, :cond_a

    .line 255
    iget-object p1, p0, Lcom/android/server/utils/AnrTimer$Args;->mSplitPoints:Ljava/util/SortedSet;

    sget-object v0, Lcom/android/server/utils/AnrTimer$Args;->sLongMethodTracingPoint:Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 257
    :cond_a
    iget-object p1, p0, Lcom/android/server/utils/AnrTimer$Args;->mSplitPoints:Ljava/util/SortedSet;

    sget-object v0, Lcom/android/server/utils/AnrTimer$Args;->sLongMethodTracingPoint:Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
