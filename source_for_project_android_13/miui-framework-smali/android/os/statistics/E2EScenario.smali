.class public final Landroid/os/statistics/E2EScenario;
.super Ljava/lang/Object;
.source "E2EScenario.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/E2EScenario;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_CATEGORY:Ljava/lang/String; = "default"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field public blacklist category:Ljava/lang/String;

.field public blacklist name:Ljava/lang/String;

.field public blacklist namespace:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/os/statistics/E2EScenario$1;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenario$1;-><init>()V

    sput-object v0, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "_namespace":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_category":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "_name":Ljava/lang/String;
    const-string v3, ""

    if-nez v0, :cond_15

    move-object v4, v3

    goto :goto_16

    :cond_15
    move-object v4, v0

    :goto_16
    iput-object v4, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    .line 55
    if-nez v1, :cond_1c

    move-object v4, v3

    goto :goto_1d

    :cond_1c
    move-object v4, v1

    :goto_1d
    iput-object v4, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    .line 56
    if-nez v2, :cond_22

    goto :goto_23

    :cond_22
    move-object v3, v2

    :goto_23
    iput-object v3, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    if-nez p1, :cond_9

    move-object v1, v0

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    iput-object v1, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    .line 43
    if-nez p2, :cond_10

    move-object v1, v0

    goto :goto_11

    :cond_10
    move-object v1, p2

    :goto_11
    iput-object v1, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    .line 44
    if-nez p3, :cond_16

    goto :goto_17

    :cond_16
    move-object v0, p3

    :goto_17
    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    instance-of v1, p1, Landroid/os/statistics/E2EScenario;

    if-nez v1, :cond_8

    goto :goto_2d

    .line 76
    :cond_8
    move-object v1, p1

    check-cast v1, Landroid/os/statistics/E2EScenario;

    .line 77
    .local v1, "other":Landroid/os/statistics/E2EScenario;
    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    iget-object v3, v1, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    iget-object v3, v1, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    nop

    .line 77
    :goto_2c
    return v0

    .line 74
    .end local v1    # "other":Landroid/os/statistics/E2EScenario;
    :cond_2d
    :goto_2d
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist normalize(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "android"

    goto :goto_12

    :cond_11
    move-object v0, p1

    :goto_12
    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    .line 66
    :cond_14
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 67
    const-string v0, "default"

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    .line 69
    :cond_20
    return-void
.end method

.method public blacklist toJson()Lorg/json/JSONObject;
    .registers 4

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "namespace"

    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v1, "category"

    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "name"

    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 117
    goto :goto_1f

    .line 115
    :catch_1b
    move-exception v1

    .line 116
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 118
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1f
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return-void
.end method
