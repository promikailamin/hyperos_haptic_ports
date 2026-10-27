.class public Lcom/xiaomi/engine/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final blacklist METHOD_D_T_M:Ljava/lang/String; = "method_d_t_m"

.field private static final blacklist METHOD_D_T_M_T:Ljava/lang/String; = "method_d_t_m_t"

.field private static final blacklist METHOD_E_T_M:Ljava/lang/String; = "method_e_t_m"

.field private static final blacklist METHOD_E_T_M_T:Ljava/lang/String; = "method_e_t_m_t"

.field private static final blacklist METHOD_I_T_M:Ljava/lang/String; = "method_i_t_m"

.field private static final blacklist METHOD_I_T_M_T:Ljava/lang/String; = "method_i_t_m_t"

.field private static final blacklist METHOD_V_T_M:Ljava/lang/String; = "method_v_t_m"

.field private static final blacklist METHOD_V_T_M_T:Ljava/lang/String; = "method_v_t_m_t"

.field private static final blacklist METHOD_WTF_T_M:Ljava/lang/String; = "method_wtf_t_m"

.field private static final blacklist METHOD_WTF_T_M_T:Ljava/lang/String; = "method_wtf_t_m_t"

.field private static final blacklist METHOD_WTF_T_T:Ljava/lang/String; = "method_wtf_t_t"

.field private static final blacklist METHOD_W_T_M:Ljava/lang/String; = "method_w_t_m"

.field private static final blacklist METHOD_W_T_M_T:Ljava/lang/String; = "method_w_t_m_t"

.field private static final blacklist METHOD_W_T_T:Ljava/lang/String; = "method_w_t_t"

.field private static final blacklist MIUI_CAMERA_LOG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist MIUI_CAMERA_LOG_METHODS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "com.xiaomi.algoup-Log"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/engine/Log;->MIUI_CAMERA_LOG_METHODS:Ljava/util/HashMap;

    .line 10
    invoke-static {}, Lcom/xiaomi/engine/Log;->getMiuiCameraLogClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/engine/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    :try_start_0
    const-string v0, "method_d_t_m"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1d

    .line 55
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    return v1

    .line 58
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    goto :goto_1f

    .line 57
    :catch_1e
    move-exception v0

    .line 59
    :goto_1f
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 64
    :try_start_0
    const-string v0, "method_d_t_m_t"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 65
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_20

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    return v1

    .line 69
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_20
    goto :goto_22

    .line 68
    :catch_21
    move-exception v0

    .line 70
    :goto_22
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 130
    :try_start_0
    const-string v0, "method_e_t_m"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1d

    .line 132
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    return v1

    .line 135
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    goto :goto_1f

    .line 134
    :catch_1e
    move-exception v0

    .line 136
    :goto_1f
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 141
    :try_start_0
    const-string v0, "method_e_t_m_t"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 142
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_20

    .line 143
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    return v1

    .line 146
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_20
    goto :goto_22

    .line 145
    :catch_21
    move-exception v0

    .line 147
    :goto_22
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static final blacklist getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 15
    .param p0, "key"    # Ljava/lang/String;

    .line 192
    sget-object v0, Lcom/xiaomi/engine/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    if-nez v0, :cond_6

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_6
    sget-object v1, Lcom/xiaomi/engine/Log;->MIUI_CAMERA_LOG_METHODS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 197
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_11

    .line 198
    return-object v2

    .line 202
    :cond_11
    const/4 v3, -0x1

    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    sparse-switch v4, :sswitch_data_1ca

    :cond_1d
    goto/16 :goto_b4

    :sswitch_1f
    const-string v4, "method_w_t_t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0xc

    goto/16 :goto_b4

    :sswitch_2b
    const-string v4, "method_w_t_m"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v3, v8

    goto/16 :goto_b4

    :sswitch_36
    const-string v4, "method_v_t_m"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v3, v6

    goto/16 :goto_b4

    :sswitch_41
    const-string v4, "method_i_t_m"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v3, v5

    goto/16 :goto_b4

    :sswitch_4c
    const-string v4, "method_e_t_m"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x4

    goto :goto_b4

    :sswitch_56
    const-string v4, "method_d_t_m"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v3, v7

    goto :goto_b4

    :sswitch_60
    const-string v4, "method_e_t_m_t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0xa

    goto :goto_b4

    :sswitch_6b
    const-string v4, "method_wtf_t_t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0xd

    goto :goto_b4

    :sswitch_76
    const-string v4, "method_wtf_t_m"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x5

    goto :goto_b4

    :sswitch_80
    const-string v4, "method_i_t_m_t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0x9

    goto :goto_b4

    :sswitch_8b
    const-string v4, "method_d_t_m_t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x7

    goto :goto_b4

    :sswitch_95
    const-string v4, "method_w_t_m_t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0x8

    goto :goto_b4

    :sswitch_a0
    const-string v4, "method_v_t_m_t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x6

    goto :goto_b4

    :sswitch_aa
    const-string v4, "method_wtf_t_m_t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_b0} :catch_1c7

    if-eqz v4, :cond_1d

    const/16 v3, 0xb

    :goto_b4
    const-string v4, "e"

    const-string v9, "i"

    const-string v10, "d"

    const-string v11, "v"

    const-string v12, "wtf"

    const-string v13, "w"

    packed-switch v3, :pswitch_data_204

    goto/16 :goto_1c3

    .line 243
    :pswitch_c5
    :try_start_c5
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v7

    invoke-virtual {v0, v12, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v2, v0

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .local v0, "method":Ljava/lang/reflect/Method;
    goto/16 :goto_1c3

    .line 240
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_d6
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v7

    invoke-virtual {v0, v13, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 241
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto/16 :goto_1c3

    .line 237
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_e7
    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v8

    invoke-virtual {v0, v12, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 238
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto/16 :goto_1c3

    .line 234
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_fc
    new-array v3, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v8

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 235
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto/16 :goto_1c3

    .line 231
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_111
    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v8

    invoke-virtual {v0, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 232
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto/16 :goto_1c3

    .line 228
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_126
    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v8

    invoke-virtual {v0, v13, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 229
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto/16 :goto_1c3

    .line 225
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_13b
    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v8

    invoke-virtual {v0, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 226
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto/16 :goto_1c3

    .line 222
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_150
    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v8

    invoke-virtual {v0, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 223
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto :goto_1c3

    .line 219
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_164
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v12, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 220
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto :goto_1c3

    .line 216
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_174
    new-array v3, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 217
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto :goto_1c3

    .line 213
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_184
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 214
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto :goto_1c3

    .line 210
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_194
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v13, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 211
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto :goto_1c3

    .line 207
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_1a4
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    goto :goto_1c3

    .line 204
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :pswitch_1b4
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 205
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    move-object v2, v0

    .line 246
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :goto_1c3
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_1c6} :catch_1c7

    .line 249
    goto :goto_1c8

    .line 247
    :catch_1c7
    move-exception v0

    .line 250
    :goto_1c8
    return-object v2

    nop

    :sswitch_data_1ca
    .sparse-switch
        -0x62bcb19d -> :sswitch_aa
        -0x5389cb90 -> :sswitch_a0
        -0x1ea3904f -> :sswitch_95
        -0xbb9f622 -> :sswitch_8b
        -0x33acddd -> :sswitch_80
        0x46d05ee -> :sswitch_76
        0x46d05f5 -> :sswitch_6b
        0x292c451f -> :sswitch_60
        0x4e4e6429 -> :sswitch_56
        0x4e5c7baa -> :sswitch_4c
        0x4e94d9ae -> :sswitch_41
        0x4f4c0b3b -> :sswitch_36
        0x4f5a22bc -> :sswitch_2b
        0x4f5a22c3 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_1b4
        :pswitch_1a4
        :pswitch_194
        :pswitch_184
        :pswitch_174
        :pswitch_164
        :pswitch_150
        :pswitch_13b
        :pswitch_126
        :pswitch_111
        :pswitch_fc
        :pswitch_e7
        :pswitch_d6
        :pswitch_c5
    .end packed-switch
.end method

.method private static blacklist getMiuiCameraLogClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 255
    :try_start_0
    const-string v0, "com.android.camera.log.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 256
    :catch_7
    move-exception v0

    .line 257
    .local v0, "shouldNotHappen":Ljava/lang/ClassNotFoundException;
    const-string v1, "com.xiaomi.algoup-Log"

    const-string v2, "\'com.android.camera.log.Log\' not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 184
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 75
    :try_start_0
    const-string v0, "method_i_t_m"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 76
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1d

    .line 77
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    return v1

    .line 80
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    goto :goto_1f

    .line 79
    :catch_1e
    move-exception v0

    .line 81
    :goto_1f
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 86
    :try_start_0
    const-string v0, "method_i_t_m_t"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 87
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_20

    .line 88
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    return v1

    .line 91
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_20
    goto :goto_22

    .line 90
    :catch_21
    move-exception v0

    .line 92
    :goto_22
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 188
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 31
    :try_start_0
    const-string v0, "method_v_t_m"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 32
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1d

    .line 33
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    return v1

    .line 36
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    goto :goto_1f

    .line 35
    :catch_1e
    move-exception v0

    .line 37
    :goto_1f
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 42
    :try_start_0
    const-string v0, "method_v_t_m_t"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 43
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_20

    .line 44
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    return v1

    .line 47
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_20
    goto :goto_22

    .line 46
    :catch_21
    move-exception v0

    .line 48
    :goto_22
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 97
    :try_start_0
    const-string v0, "method_w_t_m"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1d

    .line 99
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    return v1

    .line 102
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    goto :goto_1f

    .line 101
    :catch_1e
    move-exception v0

    .line 103
    :goto_1f
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 119
    :try_start_0
    const-string v0, "method_w_t_m_t"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 120
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_20

    .line 121
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    return v1

    .line 124
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_20
    goto :goto_22

    .line 123
    :catch_21
    move-exception v0

    .line 125
    :goto_22
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 108
    :try_start_0
    const-string v0, "method_w_t_t"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 109
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1d

    .line 110
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    return v1

    .line 113
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    goto :goto_1f

    .line 112
    :catch_1e
    move-exception v0

    .line 114
    :goto_1f
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 152
    :try_start_0
    const-string v0, "method_wtf_t_m"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 153
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1d

    .line 154
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    return v1

    .line 157
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    goto :goto_1f

    .line 156
    :catch_1e
    move-exception v0

    .line 158
    :goto_1f
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 174
    :try_start_0
    const-string v0, "method_wtf_t_m_t"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 175
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_20

    .line 176
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    return v1

    .line 179
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_20
    goto :goto_22

    .line 178
    :catch_21
    move-exception v0

    .line 180
    :goto_22
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 163
    :try_start_0
    const-string v0, "method_wtf_t_t"

    invoke-static {v0}, Lcom/xiaomi/engine/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 164
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1d

    .line 165
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    return v1

    .line 168
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    goto :goto_1f

    .line 167
    :catch_1e
    move-exception v0

    .line 169
    :goto_1f
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
