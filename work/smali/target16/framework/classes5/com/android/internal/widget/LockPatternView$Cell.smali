.class public final Lcom/android/internal/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cell"
.end annotation


# static fields
.field static blacklist sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;


# instance fields
.field final greylist column:I

.field final greylist row:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 212
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->updateSize(B)V

    .line 213
    return-void
.end method

.method private constructor blacklist <init>(IIB)V
    .registers 4

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(IIB)V

    .line 222
    iput p1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 223
    iput p2, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 224
    return-void
.end method

.method private static blacklist checkRange(IIB)V
    .registers 4

    .line 249
    if-ltz p0, :cond_24

    add-int/lit8 v0, p2, -0x1

    if-gt p0, v0, :cond_24

    .line 252
    if-ltz p1, :cond_b

    if-gt p1, v0, :cond_b

    .line 255
    return-void

    .line 253
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "column must be in range 0-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "row must be in range 0-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 3

    .line 235
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(IIB)V

    .line 236
    sget-object p2, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object p0, p2, p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static blacklist updateSize(B)V
    .registers 6

    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 v1, 0x0

    aput p0, v0, v1

    const-class v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/internal/widget/LockPatternView$Cell;

    sput-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 241
    move v0, v1

    :goto_14
    if-ge v0, p0, :cond_2a

    .line 242
    move v2, v1

    :goto_17
    if-ge v2, p0, :cond_27

    .line 243
    sget-object v3, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v3, v3, v0

    new-instance v4, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v4, v0, v2, p0}, Lcom/android/internal/widget/LockPatternView$Cell;-><init>(IIB)V

    aput-object v4, v3, v2

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 241
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 246
    :cond_2a
    return-void
.end method


# virtual methods
.method public blacklist getColumn()I
    .registers 2

    .line 231
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    return v0
.end method

.method public blacklist getRow()I
    .registers 2

    .line 227
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
