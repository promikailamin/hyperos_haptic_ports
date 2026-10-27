.class public final enum Landroid/app/AppScoutStateMachine$AppScoutState;
.super Ljava/lang/Enum;
.source "AppScoutStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppScoutStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppScoutState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/AppScoutStateMachine$AppScoutState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/app/AppScoutStateMachine$AppScoutState;

.field public static final enum blacklist APP_SCOUT_HANG:Landroid/app/AppScoutStateMachine$AppScoutState;

.field public static final enum blacklist APP_SCOUT_HANG_INPUT:Landroid/app/AppScoutStateMachine$AppScoutState;

.field public static final enum blacklist APP_SCOUT_NORMALLY:Landroid/app/AppScoutStateMachine$AppScoutState;

.field public static final enum blacklist APP_SCOUT_SLOW:Landroid/app/AppScoutStateMachine$AppScoutState;

.field public static final enum blacklist APP_SCOUT_WARNING:Landroid/app/AppScoutStateMachine$AppScoutState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 67
    new-instance v0, Landroid/app/AppScoutStateMachine$AppScoutState;

    const-string v1, "APP_SCOUT_NORMALLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/AppScoutStateMachine$AppScoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_NORMALLY:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 68
    new-instance v1, Landroid/app/AppScoutStateMachine$AppScoutState;

    const-string v3, "APP_SCOUT_WARNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/app/AppScoutStateMachine$AppScoutState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_WARNING:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 69
    new-instance v3, Landroid/app/AppScoutStateMachine$AppScoutState;

    const-string v5, "APP_SCOUT_SLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/app/AppScoutStateMachine$AppScoutState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_SLOW:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 70
    new-instance v5, Landroid/app/AppScoutStateMachine$AppScoutState;

    const-string v7, "APP_SCOUT_HANG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/app/AppScoutStateMachine$AppScoutState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_HANG:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 71
    new-instance v7, Landroid/app/AppScoutStateMachine$AppScoutState;

    const-string v9, "APP_SCOUT_HANG_INPUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/app/AppScoutStateMachine$AppScoutState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/app/AppScoutStateMachine$AppScoutState;->APP_SCOUT_HANG_INPUT:Landroid/app/AppScoutStateMachine$AppScoutState;

    .line 66
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/app/AppScoutStateMachine$AppScoutState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/app/AppScoutStateMachine$AppScoutState;->$VALUES:[Landroid/app/AppScoutStateMachine$AppScoutState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/app/AppScoutStateMachine$AppScoutState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 66
    const-class v0, Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/AppScoutStateMachine$AppScoutState;

    return-object v0
.end method

.method public static blacklist values()[Landroid/app/AppScoutStateMachine$AppScoutState;
    .registers 1

    .line 66
    sget-object v0, Landroid/app/AppScoutStateMachine$AppScoutState;->$VALUES:[Landroid/app/AppScoutStateMachine$AppScoutState;

    invoke-virtual {v0}, [Landroid/app/AppScoutStateMachine$AppScoutState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/AppScoutStateMachine$AppScoutState;

    return-object v0
.end method
