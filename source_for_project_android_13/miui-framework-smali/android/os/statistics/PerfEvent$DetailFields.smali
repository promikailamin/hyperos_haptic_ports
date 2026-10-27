.class public Landroid/os/statistics/PerfEvent$DetailFields;
.super Ljava/lang/Object;
.source "PerfEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailFields"
.end annotation


# instance fields
.field public final blacklist needStackTrace:Z

.field public blacklist pid:I


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "_needStackTrace"    # Z

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-boolean p1, p0, Landroid/os/statistics/PerfEvent$DetailFields;->needStackTrace:Z

    .line 154
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 157
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEvent$DetailFields;->pid:I

    .line 158
    return-void
.end method

.method public blacklist fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 4
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;
    .param p2, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .line 163
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEvent$DetailFields;->pid:I

    .line 174
    return-void
.end method

.method public blacklist resolveKernelLazyInfo()V
    .registers 1

    .line 177
    return-void
.end method

.method public blacklist resolveLazyInfo()V
    .registers 1

    .line 166
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 181
    :try_start_0
    const-string v0, "pid"

    iget v1, p0, Landroid/os/statistics/PerfEvent$DetailFields;->pid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    .line 184
    goto :goto_c

    .line 182
    :catch_8
    move-exception v0

    .line 183
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 185
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_c
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 169
    iget v0, p0, Landroid/os/statistics/PerfEvent$DetailFields;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return-void
.end method
