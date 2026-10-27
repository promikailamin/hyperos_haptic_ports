.class public Lcom/miui/whetstone/WhetstoneAction;
.super Ljava/lang/Object;
.source "WhetstoneAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/whetstone/WhetstoneAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist DT:Ljava/lang/String;

.field private blacklist content:Lorg/json/JSONObject;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/miui/whetstone/WhetstoneAction$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstoneAction$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstoneAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->DT:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/whetstone/WhetstoneAction;->convertStringToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->content:Lorg/json/JSONObject;

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstoneAction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstoneAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "dt"    # Ljava/lang/String;
    .param p2, "jb"    # Lorg/json/JSONObject;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneAction;->DT:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/miui/whetstone/WhetstoneAction;->content:Lorg/json/JSONObject;

    .line 19
    return-void
.end method

.method private blacklist convertStringToJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "jb":Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    .line 65
    goto :goto_c

    .line 63
    :catch_8
    move-exception v1

    .line 64
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_c
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getContent()Lorg/json/JSONObject;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->content:Lorg/json/JSONObject;

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->DT:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 36
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->DT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->content:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void
.end method
