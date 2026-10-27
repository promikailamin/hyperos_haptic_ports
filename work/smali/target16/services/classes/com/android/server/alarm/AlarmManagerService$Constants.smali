.class final Lcom/android/server/alarm/AlarmManagerService$Constants;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field static final KEY_ALLOW_WHILE_IDLE_COMPAT_QUOTA:Ljava/lang/String; = "allow_while_idle_compat_quota"

.field static final KEY_ALLOW_WHILE_IDLE_COMPAT_WINDOW:Ljava/lang/String; = "allow_while_idle_compat_window"

.field static final KEY_ALLOW_WHILE_IDLE_QUOTA:Ljava/lang/String; = "allow_while_idle_quota"

.field static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"

.field static final KEY_ALLOW_WHILE_IDLE_WINDOW:Ljava/lang/String; = "allow_while_idle_window"

.field static final KEY_CACHED_LISTENER_REMOVAL_DELAY:Ljava/lang/String; = "cached_listener_removal_delay"

.field static final KEY_LISTENER_TIMEOUT:Ljava/lang/String; = "listener_timeout"

.field static final KEY_MAX_ALARMS_PER_UID:Ljava/lang/String; = "max_alarms_per_uid"

.field static final KEY_MAX_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "max_device_idle_fuzz"

.field static final KEY_MAX_INTERVAL:Ljava/lang/String; = "max_interval"

.field static final KEY_MIN_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "min_device_idle_fuzz"

.field static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"

.field static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"

.field static final KEY_MIN_WINDOW:Ljava/lang/String; = "min_window"

.field static final KEY_PRIORITY_ALARM_DELAY:Ljava/lang/String; = "priority_alarm_delay"

.field static final KEY_TEMPORARY_QUOTA_BUMP:Ljava/lang/String; = "temporary_quota_bump"


# instance fields
.field public ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

.field public ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

.field public ALLOW_WHILE_IDLE_QUOTA:I

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public ALLOW_WHILE_IDLE_WINDOW:J

.field public APP_STANDBY_QUOTAS:[I

.field public APP_STANDBY_RESTRICTED_QUOTA:I

.field public APP_STANDBY_RESTRICTED_WINDOW:J

.field public APP_STANDBY_WINDOW:J

.field public CACHED_LISTENER_REMOVAL_DELAY:J

.field public final DEFAULT_APP_STANDBY_QUOTAS:[I

.field public DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

.field final KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

.field public LISTENER_TIMEOUT:J

.field public MAX_ALARMS_PER_UID:I

.field public MAX_DEVICE_IDLE_FUZZ:J

.field public MAX_INTERVAL:J

.field public MIN_DEVICE_IDLE_FUZZ:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field public MIN_WINDOW:J

.field public PRIORITY_ALARM_DELAY:J

.field public TEMPORARY_QUOTA_BUMP:I

.field public TIME_TICK_ALLOWED_WHILE_IDLE:Z

.field public mLastAllowWhileIdleWhitelistDuration:J

.field public mVersion:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/os/Handler;)V
    .registers 12

    .line 858
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    const-string/jumbo p1, "standby_quota_rare"

    const-string/jumbo p2, "standby_quota_never"

    const-string/jumbo v0, "standby_quota_active"

    const-string/jumbo v1, "standby_quota_working"

    const-string/jumbo v2, "standby_quota_frequent"

    filled-new-array {v0, v1, v2, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const/16 p1, 0x2d0

    const/16 p2, 0xa

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 736
    filled-new-array {p1, p2, v0, v1, v2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    const-wide/16 v3, 0x1388

    .line 770
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    const-wide/32 v5, 0xea60

    .line 773
    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide v7, 0x757b12c00L

    .line 776
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    const-wide/32 v7, 0x927c0

    .line 779
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    const-wide/16 v7, 0x2710

    .line 782
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 786
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    const/16 p2, 0x1f4

    .line 787
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    const-wide/32 v3, 0x36ee80

    .line 789
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 790
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 791
    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    const-wide/32 p1, 0x5265c00

    .line 792
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 794
    iput-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    const/16 p1, 0x48

    .line 796
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    const/4 p1, 0x7

    .line 802
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 808
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 814
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 820
    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    const-wide/32 p1, 0x1d4c0

    .line 826
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    const-wide/32 p1, 0xdbba0

    .line 832
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 843
    iput v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    .line 845
    iput-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    .line 853
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    const-wide/16 p1, -0x1

    .line 855
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 856
    iput v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 859
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 860
    :goto_7f
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    array-length p2, p1

    if-ge v2, p2, :cond_8d

    .line 861
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget p2, p2, v2

    aput p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    :cond_8d
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 1094
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1098
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1099
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1101
    const-string/jumbo v0, "min_futurity"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    const-string v0, "="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1104
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1106
    const-string/jumbo v1, "min_interval"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1109
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1111
    const-string/jumbo v1, "max_interval"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1114
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1116
    const-string/jumbo v1, "min_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1119
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1121
    const-string/jumbo v1, "listener_timeout"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1123
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1124
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1126
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allow_while_idle_quota"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1127
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1129
    const-string v1, "allow_while_idle_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1132
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1134
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allow_while_idle_compat_quota"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1135
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1137
    const-string v1, "allow_while_idle_compat_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1140
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1142
    const-string v1, "allow_while_idle_whitelist_duration"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1144
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1145
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1147
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "max_alarms_per_uid"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1148
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1150
    const-string v1, "app_standby_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1153
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v1, 0x0

    .line 1155
    :goto_da
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_f2

    .line 1156
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1157
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 1160
    :cond_f2
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "standby_quota_restricted"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1161
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1163
    const-string v1, "app_standby_restricted_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1166
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1168
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "time_tick_allowed_while_idle"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1169
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1171
    const-string/jumbo v1, "priority_alarm_delay"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1174
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1176
    const-string/jumbo v1, "min_device_idle_fuzz"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1179
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1181
    const-string/jumbo v1, "max_device_idle_fuzz"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1184
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1186
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "temporary_quota_bump"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1187
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1189
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    .line 1190
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1189
    const-string v2, "delay_nonwakeup_alarms_while_screen_off"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1191
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1193
    const-string v1, "cached_listener_removal_delay"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1196
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1198
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 1202
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000001L

    .line 1204
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000002L

    .line 1205
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000007L

    .line 1206
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000003L

    .line 1207
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000006L

    .line 1208
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1211
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getVersion()I
    .registers 2

    .line 866
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_5
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 868
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 897
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 898
    :try_start_9
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 899
    invoke-virtual {v1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_243

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_28

    goto :goto_19

    .line 904
    :cond_28
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    const-wide/16 v10, 0x1388

    const-wide/32 v12, 0xea60

    const-wide/16 v14, 0x2710

    move/from16 v16, v6

    const-wide/32 v5, 0x36ee80

    sparse-switch v9, :sswitch_data_248

    :cond_3b
    const/4 v9, 0x0

    goto/16 :goto_230

    :sswitch_3e
    const-string v5, "delay_nonwakeup_alarms_while_screen_off"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1009
    const-string v5, "delay_nonwakeup_alarms_while_screen_off"

    invoke-virtual {v1, v5, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    :cond_4e
    :goto_4e
    const/4 v9, 0x0

    goto/16 :goto_23f

    :catchall_51
    move-exception v0

    goto/16 :goto_245

    .line 904
    :sswitch_54
    const-string/jumbo v5, "min_interval"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 910
    const-string/jumbo v5, "min_interval"

    invoke-virtual {v1, v5, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    goto :goto_4e

    .line 904
    :sswitch_67
    const-string v5, "allow_while_idle_compat_quota"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 929
    const-string v5, "allow_while_idle_compat_quota"

    const/4 v6, 0x7

    invoke-virtual {v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    if-gtz v5, :cond_4e

    .line 933
    const-string v5, "AlarmManager"

    const-string v6, "Must have positive allow_while_idle_compat quota"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    goto :goto_4e

    .line 904
    :sswitch_84
    const-string/jumbo v5, "max_interval"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 914
    const-string/jumbo v5, "max_interval"

    const-wide v8, 0x757b12c00L

    invoke-virtual {v1, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    goto :goto_4e

    .line 904
    :sswitch_9c
    const-string/jumbo v5, "time_tick_allowed_while_idle"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 989
    const-string/jumbo v5, "time_tick_allowed_while_idle"

    invoke-virtual {v1, v5, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    goto :goto_4e

    .line 904
    :sswitch_af
    const-string v5, "allow_while_idle_whitelist_duration"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 966
    const-string v5, "allow_while_idle_whitelist_duration"

    invoke-virtual {v1, v5, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 969
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    goto :goto_4e

    .line 904
    :sswitch_c3
    const-string/jumbo v5, "listener_timeout"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 972
    const-string/jumbo v5, "listener_timeout"

    invoke-virtual {v1, v5, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    goto/16 :goto_4e

    .line 904
    :sswitch_d7
    const-string v5, "app_standby_window"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v9, 0x0

    goto/16 :goto_194

    :sswitch_e2
    const-string/jumbo v5, "min_window"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 926
    const-string/jumbo v5, "min_window"

    const-wide/32 v8, 0x927c0

    invoke-virtual {v1, v5, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    goto/16 :goto_4e

    .line 904
    :sswitch_f9
    const-string/jumbo v5, "max_device_idle_fuzz"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v9, 0x0

    goto/16 :goto_1ec

    :sswitch_105
    const-string v9, "allow_while_idle_window"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 938
    const-string v8, "allow_while_idle_window"

    invoke-virtual {v1, v8, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    cmp-long v10, v8, v5

    if-lez v10, :cond_124

    .line 942
    const-string v8, "AlarmManager"

    const-string v9, "Cannot have allow_while_idle_window > 3600000"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    goto/16 :goto_4e

    :cond_124
    cmp-long v5, v8, v5

    if-eqz v5, :cond_4e

    .line 946
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using a non-default allow_while_idle_window = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 904
    :sswitch_142
    const-string v5, "allow_while_idle_quota"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 918
    const-string v5, "allow_while_idle_quota"

    const/16 v6, 0x48

    invoke-virtual {v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    if-gtz v5, :cond_4e

    .line 921
    const-string v5, "AlarmManager"

    const-string v6, "Must have positive allow_while_idle quota"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    goto/16 :goto_4e

    .line 904
    :sswitch_161
    const-string/jumbo v5, "temporary_quota_bump"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1005
    const-string/jumbo v5, "temporary_quota_bump"

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    goto/16 :goto_23f

    :sswitch_176
    const/4 v9, 0x0

    .line 904
    const-string/jumbo v5, "priority_alarm_delay"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_230

    .line 994
    const-string/jumbo v5, "priority_alarm_delay"

    invoke-virtual {v1, v5, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    goto/16 :goto_23f

    :sswitch_18b
    const/4 v9, 0x0

    .line 904
    const-string v5, "app_standby_restricted_window"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_230

    .line 986
    :goto_194
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyWindowsLocked()V

    goto/16 :goto_23f

    :sswitch_199
    const/4 v9, 0x0

    .line 904
    const-string/jumbo v5, "max_alarms_per_uid"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_230

    .line 976
    const-string/jumbo v5, "max_alarms_per_uid"

    const/16 v6, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    if-ge v5, v6, :cond_23f

    .line 979
    const-string v5, "AlarmManager"

    const-string v8, "Cannot set max_alarms_per_uid lower than 500"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iput v6, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    goto/16 :goto_23f

    :sswitch_1bb
    const/4 v9, 0x0

    .line 904
    const-string v5, "cached_listener_removal_delay"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_230

    .line 1014
    const-string v5, "cached_listener_removal_delay"

    invoke-virtual {v1, v5, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    goto/16 :goto_23f

    :sswitch_1ce
    const/4 v9, 0x0

    .line 904
    const-string/jumbo v5, "min_futurity"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_230

    .line 906
    const-string/jumbo v5, "min_futurity"

    invoke-virtual {v1, v5, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    goto :goto_23f

    :sswitch_1e2
    const/4 v9, 0x0

    .line 904
    const-string/jumbo v5, "min_device_idle_fuzz"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_230

    :goto_1ec
    if-nez v16, :cond_23f

    .line 1000
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateDeviceIdleFuzzBoundaries()V

    move v6, v4

    goto/16 :goto_19

    :sswitch_1f4
    const/4 v9, 0x0

    .line 904
    const-string v10, "allow_while_idle_compat_window"

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_230

    .line 951
    const-string v8, "allow_while_idle_compat_window"

    invoke-virtual {v1, v8, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    cmp-long v8, v10, v5

    if-lez v8, :cond_213

    .line 956
    const-string v8, "AlarmManager"

    const-string v10, "Cannot have allow_while_idle_compat_window > 3600000"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iput-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    goto :goto_23f

    :cond_213
    cmp-long v5, v10, v5

    if-eqz v5, :cond_23f

    .line 961
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using a non-default allow_while_idle_compat_window = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23f

    .line 1019
    :cond_230
    :goto_230
    const-string/jumbo v5, "standby_quota_"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23f

    if-nez v7, :cond_23f

    .line 1022
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyQuotasLocked()V

    move v7, v4

    :cond_23f
    :goto_23f
    move/from16 v6, v16

    goto/16 :goto_19

    .line 1028
    :cond_243
    monitor-exit v2

    return-void

    :goto_245
    monitor-exit v2
    :try_end_246
    .catchall {:try_start_9 .. :try_end_246} :catchall_51

    throw v0

    nop

    :sswitch_data_248
    .sparse-switch
        -0x5e0379da -> :sswitch_1f4
        -0x58de0e82 -> :sswitch_1e2
        -0x4d123227 -> :sswitch_1ce
        -0x4a94a91e -> :sswitch_1bb
        -0x3a284894 -> :sswitch_199
        -0x3481955c -> :sswitch_18b
        -0x24dca806 -> :sswitch_176
        -0x23417eb5 -> :sswitch_161
        -0x226d61af -> :sswitch_142
        -0x21ab88c9 -> :sswitch_105
        -0x187e4754 -> :sswitch_f9
        -0x176c2d83 -> :sswitch_e2
        -0x8c8f860 -> :sswitch_d7
        0x3795c4d6 -> :sswitch_c3
        0x43f28753 -> :sswitch_af
        0x48578d89 -> :sswitch_9c
        0x5b1d4140 -> :sswitch_84
        0x70457582 -> :sswitch_67
        0x77646c12 -> :sswitch_54
        0x7d295c98 -> :sswitch_3e
    .end sparse-switch
.end method

.method public start()V
    .registers 3

    .line 872
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->registerDeviceConfigListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v0, 0x0

    .line 873
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "alarm_manager"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public updateAllowWhileIdleWhitelistDurationLocked()V
    .registers 9

    .line 878
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_31

    .line 879
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 881
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    const/16 v6, 0x12e

    const-string v7, ""

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const/16 v5, 0x12d

    const-string v6, ""

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const/4 v5, -0x1

    const-string v6, ""

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    :cond_31
    return-void
.end method

.method public final updateDeviceIdleFuzzBoundaries()V
    .registers 6

    .line 1032
    const-string/jumbo v0, "min_device_idle_fuzz"

    const-string/jumbo v1, "max_device_idle_fuzz"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    .line 1036
    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    const-wide/32 v3, 0xdbba0

    .line 1038
    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 1041
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_45

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "max_device_idle_fuzz cannot be smaller than min_device_idle_fuzz! Increasing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    :cond_45
    return-void
.end method

.method public final updateStandbyQuotasLocked()V
    .registers 9

    .line 1052
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const-string v1, "alarm_manager"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1055
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v5, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v4

    const/4 v2, 0x1

    move v3, v2

    .line 1058
    :goto_1b
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_39

    .line 1059
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget-object v4, v4, v3

    add-int/lit8 v6, v3, -0x1

    aget v6, v5, v6

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v7, v7, v3

    .line 1061
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1059
    invoke-virtual {v0, v4, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1064
    :cond_39
    const-string/jumbo v0, "standby_quota_restricted"

    .line 1065
    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1064
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    return-void
.end method

.method public final updateStandbyWindowsLocked()V
    .registers 9

    .line 1073
    const-string v0, "app_standby_window"

    const-string v1, "app_standby_restricted_window"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-wide/32 v3, 0x36ee80

    .line 1076
    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    cmp-long v0, v5, v3

    .line 1078
    const-string v7, "AlarmManager"

    if-lez v0, :cond_25

    .line 1079
    const-string v0, "Cannot exceed the app_standby_window size of 3600000"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    goto :goto_3f

    :cond_25
    cmp-long v0, v5, v3

    if-gez v0, :cond_3f

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using a non-default app_standby_window of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_3f
    :goto_3f
    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    const-wide/32 v5, 0x5265c00

    .line 1088
    invoke-virtual {v2, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1087
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    return-void
.end method
