.class public Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderStarvationDetails"
.end annotation


# static fields
.field private static final blacklist FIELD_MAX_THREADS:Ljava/lang/String; = "maxThreads"


# instance fields
.field public blacklist maxThreads:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 46
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;->maxThreads:I

    .line 48
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 58
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;->maxThreads:I

    .line 60
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 64
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 66
    :try_start_3
    const-string v0, "maxThreads"

    iget v1, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;->maxThreads:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_a} :catch_b

    .line 69
    goto :goto_f

    .line 67
    :catch_b
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_f
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;->maxThreads:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
