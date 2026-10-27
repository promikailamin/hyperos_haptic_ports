.class synthetic Landroid/app/AppScoutStateMachine$2;
.super Ljava/lang/Object;
.source "AppScoutStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppScoutStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$android$app$AppScoutStateMachine$AppScoutState:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 166
    invoke-static {}, Landroid/app/AppScoutStateMachine$AppScoutState;->values()[Landroid/app/AppScoutStateMachine$AppScoutState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/app/AppScoutStateMachine$2;->$SwitchMap$android$app$AppScoutStateMachine$AppScoutState:[I

    :try_start_9
    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_NORMALLY:Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-virtual {v1}, Landroid/app/AppScoutStateMachine$AppScoutState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Landroid/app/AppScoutStateMachine$2;->$SwitchMap$android$app$AppScoutStateMachine$AppScoutState:[I

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_SLOW:Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-virtual {v1}, Landroid/app/AppScoutStateMachine$AppScoutState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Landroid/app/AppScoutStateMachine$2;->$SwitchMap$android$app$AppScoutStateMachine$AppScoutState:[I

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_WARNING:Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-virtual {v1}, Landroid/app/AppScoutStateMachine$AppScoutState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Landroid/app/AppScoutStateMachine$2;->$SwitchMap$android$app$AppScoutStateMachine$AppScoutState:[I

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_HANG:Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-virtual {v1}, Landroid/app/AppScoutStateMachine$AppScoutState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Landroid/app/AppScoutStateMachine$2;->$SwitchMap$android$app$AppScoutStateMachine$AppScoutState:[I

    sget-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_HANG_INPUT:Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-virtual {v1}, Landroid/app/AppScoutStateMachine$AppScoutState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    return-void
.end method
