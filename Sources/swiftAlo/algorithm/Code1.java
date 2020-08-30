package algorithm;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

// 两数之和
public class Code1 {

    protected int[] twoSum(int[] array, int target) {
        Map<Integer, Integer> m = new HashMap<>();
        for (int i = 0; i < array.length; i++) {
            int result = target - array[i];
            if (m.containsKey(result)) {
                return new int[] {m.get(result), i};
            } else {
                m.put(array[i], i);
            }
        }
        return new int[] {};
    }

    public static void main(String[] args) {
        Code1 code = new Code1();
        int[] arr = {1, 3, 4, 9};
        int[] idxs = code.twoSum(arr, 10);
        System.out.println(Arrays.toString(idxs));

    }
}

