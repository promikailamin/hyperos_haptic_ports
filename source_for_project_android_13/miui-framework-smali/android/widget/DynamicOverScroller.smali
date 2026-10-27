.class Landroid/widget/DynamicOverScroller;
.super Landroid/widget/OverScroller;
.source "DynamicOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DynamicOverScroller$OverScrollHandler;,
        Landroid/widget/DynamicOverScroller$DynamicScroller;
    }
.end annotation


# static fields
.field private static final blacklist FLING_FRICTION:F = 0.4761905f

.field private static final blacklist FLING_VELOCITY_SCALE:F = 1.05f

.field private static final blacklist MAX_SPRING_INITIAL_VELOCITY:F = 4000.0f

.field private static final blacklist MINIMAL_VISIBLE_CHANGE:F = 0.5f

.field private static final blacklist SPRING_DAMPING_RATIO:F = 0.99f

.field private static final blacklist SPRING_STIFFNESS:F = 200.0f

.field private static final blacklist mScrollerY:Ljava/lang/reflect/Field;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-string v0, "mScrollerY"

    invoke-static {v0}, Landroid/widget/DynamicOverScroller;->reflectField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/widget/DynamicOverScroller;->mScrollerY:Ljava/lang/reflect/Field;

    .line 44
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 31
    sget-object v0, Landroid/widget/DynamicOverScroller;->mScrollerY:Ljava/lang/reflect/Field;

    new-instance v1, Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-direct {v1, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Landroid/widget/DynamicOverScroller;->replaceScroller(Ljava/lang/reflect/Field;Landroid/widget/OverScroller$SplineOverScroller;)V

    .line 32
    return-void
.end method

.method private static blacklist reflectField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 48
    :try_start_0
    const-class v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 49
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_a} :catch_b

    .line 50
    return-object v0

    .line 51
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_b
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist replaceScroller(Ljava/lang/reflect/Field;Landroid/widget/OverScroller$SplineOverScroller;)V
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "scroller"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 36
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_4

    .line 39
    goto :goto_8

    .line 37
    :catch_4
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_8
    return-void
.end method
