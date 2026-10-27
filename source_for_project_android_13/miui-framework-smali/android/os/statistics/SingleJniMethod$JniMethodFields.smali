.class public Landroid/os/statistics/SingleJniMethod$JniMethodFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "SingleJniMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SingleJniMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JniMethodFields"
.end annotation


# static fields
.field private static final blacklist FIELD_STACK:Ljava/lang/String; = "stack"

.field private static final blacklist exceptionalClassMethodSimpleNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist exceptionalJniMethodFullNames:[Ljava/lang/String;


# instance fields
.field public blacklist stackTrace:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 46
    const-string v0, "java.lang.Object.wait"

    const-string v1, "java.lang.Object.notify"

    const-string v2, "java.lang.Object.notifyAll"

    const-string v3, "java.lang.Thread.sleep"

    const-string v4, "android.os.BinderProxy.transactNative"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalJniMethodFullNames:[Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>(Z)V

    .line 61
    return-void
.end method

.method private static blacklist buildStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)[Ljava/lang/String;
    .registers 15
    .param p0, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;

    .line 95
    sget-object v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    .line 96
    monitor-enter v0

    .line 97
    :try_start_a
    sget-object v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalJniMethodFullNames:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_41

    aget-object v5, v1, v4
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_43

    .line 99
    .local v5, "methodFullName":Ljava/lang/String;
    :try_start_12
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 100
    .local v6, "dotPosition":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "methodSimpleName":Ljava/lang/String;
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "classFullName":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 103
    .local v9, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v10, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 104
    .local v11, "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v11, :cond_39

    .line 105
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 106
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_39
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_3c} :catch_3d
    .catchall {:try_start_12 .. :try_end_3c} :catchall_43

    .line 110
    .end local v6    # "dotPosition":I
    .end local v7    # "methodSimpleName":Ljava/lang/String;
    .end local v8    # "classFullName":Ljava/lang/String;
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3e

    .line 109
    :catch_3d
    move-exception v6

    .line 97
    .end local v5    # "methodFullName":Ljava/lang/String;
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 112
    :cond_41
    :try_start_41
    monitor-exit v0

    goto :goto_46

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v1

    .line 115
    :cond_46
    :goto_46
    if-eqz p0, :cond_81

    array-length v0, p0

    if-eqz v0, :cond_81

    if-eqz p1, :cond_81

    array-length v0, p1

    if-nez v0, :cond_51

    goto :goto_81

    .line 120
    :cond_51
    aget-object v0, p0, v2

    .line 121
    .local v0, "topElement":Ljava/lang/StackTraceElement;
    aget-object v1, p1, v2

    .line 122
    .local v1, "topClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.os.statistics."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 123
    sget-object v2, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v2

    .line 125
    :cond_64
    sget-object v2, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 126
    .local v2, "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_7b

    .line 127
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 128
    sget-object v3, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v3

    .line 131
    :cond_7b
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 117
    .end local v0    # "topElement":Ljava/lang/StackTraceElement;
    .end local v1    # "topClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_81
    :goto_81
    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 5
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;
    .param p2, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .line 65
    invoke-static {p2, p1}, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->buildStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 76
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 77
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    .line 78
    if-nez v0, :cond_f

    .line 79
    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    .line 81
    :cond_f
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 85
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 87
    :try_start_3
    const-string v0, "stack"

    iget-object v1, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_e} :catch_f

    .line 90
    goto :goto_13

    .line 88
    :catch_f
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_13
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    iget-object v0, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 72
    return-void
.end method
