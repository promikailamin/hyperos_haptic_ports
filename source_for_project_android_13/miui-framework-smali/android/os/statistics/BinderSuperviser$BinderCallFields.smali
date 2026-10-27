.class public Landroid/os/statistics/BinderSuperviser$BinderCallFields;
.super Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderCallFields"
.end annotation


# static fields
.field private static final blacklist FIELD_CODE:Ljava/lang/String; = "code"

.field private static final blacklist FIELD_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "interface"

.field private static final blacklist FIELD_STACK:Ljava/lang/String; = "stack"

.field private static blacklist sBinderProxyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist code:I

.field public blacklist interfaceDescriptor:Ljava/lang/String;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist processName:Ljava/lang/String;

.field public blacklist stackTrace:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;-><init>(Z)V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->processName:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->packageName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private static blacklist initClasses()V
    .registers 1

    .line 194
    sget-object v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->sBinderProxyClass:Ljava/lang/Class;

    if-nez v0, :cond_11

    .line 196
    :try_start_4
    const-string v0, "android.os.BinderProxy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->sBinderProxyClass:Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_c} :catch_d

    .line 199
    goto :goto_11

    .line 197
    :catch_d
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 201
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_11
    :goto_11
    return-void
.end method

.method private static blacklist isJavaBinderCall([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)Z
    .registers 5
    .param p0, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;

    .line 204
    const/4 v0, 0x0

    if-eqz p0, :cond_14

    array-length v1, p0

    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_14

    .line 208
    :cond_c
    aget-object v1, p1, v0

    .line 209
    .local v1, "topClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->sBinderProxyClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0

    .line 206
    .end local v1    # "topClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_14
    :goto_14
    return v0
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 113
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "binder":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->code:I

    .line 118
    if-eqz v0, :cond_1b

    .line 119
    invoke-static {v0}, Landroid/os/statistics/BinderSuperviser;->-$$Nest$smgetInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    .line 121
    :cond_1b
    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    if-nez v1, :cond_23

    .line 122
    const-string v1, ""

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    .line 124
    :cond_23
    return-void
.end method

.method public blacklist fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 9
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;
    .param p2, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .line 130
    invoke-static {}, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->initClasses()V

    .line 131
    invoke-static {p2, p1}, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->isJavaBinderCall([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_1b

    .line 133
    aget-object v2, p1, v0

    .line 134
    .local v2, "clazz":Ljava/lang/Class;
    sget-object v3, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->sBinderProxyClass:Ljava/lang/Class;

    if-ne v2, v3, :cond_18

    .line 135
    aput-object v1, p1, v0

    .line 136
    aput-object v1, p2, v0

    .line 132
    .end local v2    # "clazz":Ljava/lang/Class;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 139
    .end local v0    # "i":I
    :cond_1b
    invoke-static {p2, p1, v1}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    goto :goto_4b

    .line 141
    :cond_22
    invoke-static {p3}, Landroid/os/statistics/NativeBackTrace;->resolve(Landroid/os/statistics/NativeBackTrace;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "nativeStackTrace":[Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    array-length v3, v0

    if-ge v2, v3, :cond_45

    .line 144
    aget-object v3, v0, v2

    .line 145
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_45

    const-string v4, "BinderSuperviser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "libbinder.so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 146
    :cond_40
    aput-object v1, v0, v2

    .line 143
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 152
    .end local v2    # "i":I
    :cond_45
    invoke-static {p2, p1, v0}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    .line 154
    .end local v0    # "nativeStackTrace":[Ljava/lang/String;
    :goto_4b
    if-eqz p3, :cond_50

    .line 155
    invoke-virtual {p3}, Landroid/os/statistics/NativeBackTrace;->dispose()V

    .line 157
    :cond_50
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 169
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    .line 171
    if-nez v0, :cond_f

    .line 172
    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    .line 174
    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->code:I

    .line 175
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    .line 176
    if-nez v0, :cond_21

    .line 177
    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    .line 179
    :cond_21
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 183
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 185
    :try_start_3
    const-string v0, "interface"

    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v0, "code"

    iget v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->code:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string v0, "stack"

    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1c} :catch_1d

    .line 190
    goto :goto_21

    .line 188
    :catch_1d
    move-exception v0

    .line 189
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 191
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_21
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 165
    return-void
.end method
