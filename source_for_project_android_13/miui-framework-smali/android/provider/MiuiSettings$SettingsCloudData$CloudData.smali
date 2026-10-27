.class public Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings$SettingsCloudData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudData"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist data:Ljava/lang/String;

.field private blacklist json:Lorg/json/JSONObject;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6939
    new-instance v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData$1;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData$1;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .line 6840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6841
    iput-object p1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    .line 6842
    return-void
.end method

.method private blacklist hasKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 6873
    invoke-direct {p0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->initJson()V

    .line 6874
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist initJson()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 6867
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    if-nez v0, :cond_d

    .line 6868
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    .line 6870
    :cond_d
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 6932
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 6851
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 6852
    return v0

    .line 6854
    :cond_4
    instance-of v1, p1, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 6855
    return v2

    .line 6857
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 6858
    .local v1, "cloudData":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    iget-object v3, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    iget-object v4, v1, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    if-eq v3, v4, :cond_1d

    if-eqz v3, :cond_1c

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :cond_1d
    :goto_1d
    return v0
.end method

.method public blacklist getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Z

    .line 6911
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6912
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    .line 6916
    :cond_d
    goto :goto_12

    .line 6914
    :catch_e
    move-exception v0

    .line 6915
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6917
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return p2
.end method

.method public blacklist getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # I

    .line 6889
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6890
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    .line 6894
    :cond_d
    goto :goto_12

    .line 6892
    :catch_e
    move-exception v0

    .line 6893
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6895
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return p2
.end method

.method public blacklist getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # J

    .line 6900
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6901
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    return-wide v0

    .line 6905
    :cond_d
    goto :goto_12

    .line 6903
    :catch_e
    move-exception v0

    .line 6904
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6906
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-wide p2
.end method

.method public blacklist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Ljava/lang/String;

    .line 6922
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6923
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    return-object v0

    .line 6927
    :cond_d
    goto :goto_12

    .line 6925
    :catch_e
    move-exception v0

    .line 6926
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6928
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-object p2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 6863
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist json()Lorg/json/JSONObject;
    .registers 3

    .line 6879
    :try_start_0
    invoke-direct {p0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->initJson()V

    .line 6880
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 6881
    :catch_6
    move-exception v0

    .line 6882
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 6883
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 6846
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6936
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6937
    return-void
.end method
