.class public final enum Lcom/android/internal/widget/LockPatternView$InputMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/LockPatternView$InputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/LockPatternView$InputMode;

.field public static final enum blacklist Click:Lcom/android/internal/widget/LockPatternView$InputMode;

.field public static final enum blacklist Swipe:Lcom/android/internal/widget/LockPatternView$InputMode;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/LockPatternView$InputMode;
    .registers 2

    .line 309
    sget-object v0, Lcom/android/internal/widget/LockPatternView$InputMode;->Swipe:Lcom/android/internal/widget/LockPatternView$InputMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$InputMode;->Click:Lcom/android/internal/widget/LockPatternView$InputMode;

    filled-new-array {v0, v1}, [Lcom/android/internal/widget/LockPatternView$InputMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 315
    new-instance v0, Lcom/android/internal/widget/LockPatternView$InputMode;

    const-string v1, "Swipe"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView$InputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$InputMode;->Swipe:Lcom/android/internal/widget/LockPatternView$InputMode;

    .line 320
    new-instance v0, Lcom/android/internal/widget/LockPatternView$InputMode;

    const-string v1, "Click"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView$InputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$InputMode;->Click:Lcom/android/internal/widget/LockPatternView$InputMode;

    .line 309
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$InputMode;->$values()[Lcom/android/internal/widget/LockPatternView$InputMode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternView$InputMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$InputMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternView$InputMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 309
    const-class v0, Lcom/android/internal/widget/LockPatternView$InputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/LockPatternView$InputMode;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/LockPatternView$InputMode;
    .registers 1

    .line 309
    sget-object v0, Lcom/android/internal/widget/LockPatternView$InputMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$InputMode;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternView$InputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternView$InputMode;

    return-object v0
.end method
