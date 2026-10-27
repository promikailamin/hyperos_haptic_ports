.class public abstract synthetic Lcom/android/server/display/DisplayTopologyXmlStore$1;
.super Ljava/lang/Object;
.source "DisplayTopologyXmlStore.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$display$topology$Position:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 492
    invoke-static {}, Lcom/android/server/display/topology/Position;->values()[Lcom/android/server/display/topology/Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/display/DisplayTopologyXmlStore$1;->$SwitchMap$com$android$server$display$topology$Position:[I

    :try_start_9
    sget-object v1, Lcom/android/server/display/topology/Position;->left:Lcom/android/server/display/topology/Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/server/display/DisplayTopologyXmlStore$1;->$SwitchMap$com$android$server$display$topology$Position:[I

    sget-object v1, Lcom/android/server/display/topology/Position;->top:Lcom/android/server/display/topology/Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/server/display/DisplayTopologyXmlStore$1;->$SwitchMap$com$android$server$display$topology$Position:[I

    sget-object v1, Lcom/android/server/display/topology/Position;->right:Lcom/android/server/display/topology/Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/server/display/DisplayTopologyXmlStore$1;->$SwitchMap$com$android$server$display$topology$Position:[I

    sget-object v1, Lcom/android/server/display/topology/Position;->bottom:Lcom/android/server/display/topology/Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
