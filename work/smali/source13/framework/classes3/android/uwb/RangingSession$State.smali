.class final enum Landroid/uwb/RangingSession$State;
.super Ljava/lang/Enum;
.source "RangingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/RangingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/uwb/RangingSession$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/uwb/RangingSession$State;

.field public static final enum blacklist ACTIVE:Landroid/uwb/RangingSession$State;

.field public static final enum blacklist CLOSED:Landroid/uwb/RangingSession$State;

.field public static final enum blacklist IDLE:Landroid/uwb/RangingSession$State;

.field public static final enum blacklist INIT:Landroid/uwb/RangingSession$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 62
    new-instance v0, Landroid/uwb/RangingSession$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/uwb/RangingSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/uwb/RangingSession$State;->INIT:Landroid/uwb/RangingSession$State;

    .line 67
    new-instance v1, Landroid/uwb/RangingSession$State;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/uwb/RangingSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    .line 72
    new-instance v3, Landroid/uwb/RangingSession$State;

    const-string v5, "ACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/uwb/RangingSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    .line 77
    new-instance v5, Landroid/uwb/RangingSession$State;

    const-string v7, "CLOSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/uwb/RangingSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    .line 57
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/uwb/RangingSession$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/uwb/RangingSession$State;->$VALUES:[Landroid/uwb/RangingSession$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/uwb/RangingSession$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Landroid/uwb/RangingSession$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/uwb/RangingSession$State;

    return-object v0
.end method

.method public static blacklist values()[Landroid/uwb/RangingSession$State;
    .registers 1

    .line 57
    sget-object v0, Landroid/uwb/RangingSession$State;->$VALUES:[Landroid/uwb/RangingSession$State;

    invoke-virtual {v0}, [Landroid/uwb/RangingSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/uwb/RangingSession$State;

    return-object v0
.end method
